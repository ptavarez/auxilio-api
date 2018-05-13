# frozen_string_literal: true

class DriversController < ProtectedController
  before_action :set_driver, only: %i[update show]
  skip_before_action :authenticate, only: %i[signup signin]

  # POST '/sign-up'
  def signup
    driver = Driver.create(driver_creds)
    if driver.valid?
      render json: driver, status: :created
    else
      render json: driver.errors, status: :bad_request
    end
  end

  # POST '/sign-in'
  def signin
    creds = driver_creds
    if (driver = Driver.authenticate creds[:email],
                                     creds[:password])
      render json: driver, serializer: DriverLoginSerializer, root: 'driver'
    else
      head :unauthorized
    end
  end

  # DELETE '/sign-out'
  def signout
    current_driver.logout
    head :no_content
  end

  # PATCH '/change-password/:id'
  def changepw
    # if the the old password authenticates,
    # the new one is not blank,
    # and the model saves
    # then 204
    # else 400
    if current_driver.authenticate(pw_creds[:old]) &&
       !(current_driver.password = pw_creds[:new]).blank? &&
       current_driver.save
      head :no_content
    else
      head :bad_request
    end
  end

  def index
    render json: Driver.all
  end

  def show
    render json: @driver
  end

  def update
    if @driver.update(driver_params)
      render json: @driver
    else
      render json: @driver.errors, status: :unprocessable_entity
    end
  end

  private

  def set_driver
    @driver = Driver.find(params[:id])
  end

  def driver_creds
    params.require(:credentials)
          .permit(:email, :password, :password_confirmation)
  end

  def pw_creds
    params.require(:passwords)
          .permit(:old, :new)
  end

  def driver_params
    params.require(:driver)
          .permit(:email)
  end
end
