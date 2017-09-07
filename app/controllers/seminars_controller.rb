class SeminarsController < ApplicationController
  before_action :set_seminar, only: [:show, :update, :destroy]

  # GET /seminars
  def index
    @seminars = Seminar.all

    render json: @seminars
  end

  # GET /seminars/1
  def show
    render json: @seminar
  end

  # POST /seminars
  def create
    @seminar = Seminar.new(seminar_params)

    if @seminar.save
      render json: @seminar, status: :created, location: @seminar
    else
      render json: @seminar.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /seminars/1
  def update

    if @seminar.update(seminar_params)
      render json: @seminar
    else
      render json: @seminar.errors, status: :unprocessable_entity
    end
  end

  # DELETE /seminars/1
  def destroy
    @seminar.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seminar
      @seminar = Seminar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def seminar_params
      params.require(:seminar).permit(:seminar_name, :location_address, :description, :date, :country_id, :user_id, :teaching_module_id, :created_by, user_ids: [])
    end
end
