class AssistsController < OpenReadController
  before_action :set_assist, only: [:show, :update, :destroy]

  # GET /assists
  def index
    @assists = Assist.all

    render json: @base_query
  end

  # GET /assists/1
  def show
    render json: @assist
  end

  # POST /assists
  def create
    @assist = current_user.assists.build(assist_params)

    if @assist.save
      render json: @assist, status: :created, location: @assist
    else
      render json: @assist.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /assists/1
  def update
    if @assist.update(assist_params)
      render json: @assist
    else
      render json: @assist.errors, status: :unprocessable_entity
    end
  end

  # DELETE /assists/1
  def destroy
    @assist.destroy
  end

  def base_query
    puts Assist.where('user_id = :user', user: current_user.id)
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_assist
    @assist = current_user.assists.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def assist_params
    params.require(:assist).permit(:service, :fulfilled)
  end

  private :base_query, :set_assist, :assist_params
end
