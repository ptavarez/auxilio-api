class ServicesController < ApplicationController
  before_action :set_service, only: [:show]

  # GET /services
  def index
    @services = Service.all

    render json: @services
  end

  # SEARCH /search/:search
  def search_services
    @services = Service.where('description LIKE :search OR name LIKE :search OR
                              category LIKE :search',
                              search: "%#{params[:search]}%")
    render json: @services
  end

  # GET /services/1
  def show
    render json: @service
  end

  # POST /services
  def create
    @service = Service.new(service_params)

    if @service.save
      render json: @service, status: :created, location: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /services/1
  def update
    if @service.update(service_params)
      render json: @service
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  # DELETE /services/1
  def destroy
    @service.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def service_params
      params.require(:service).permit(:name, :description, :category)
    end
end
