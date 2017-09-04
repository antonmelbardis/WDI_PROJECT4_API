class TeachingModulesController < ApplicationController
  before_action :set_teaching_module, only: [:show, :update, :destroy]

  # GET /teaching_modules
  def index
    @teaching_modules = TeachingModule.all

    render json: @teaching_modules
  end

  # GET /teaching_modules/1
  def show
    render json: @teaching_module
  end

  # POST /teaching_modules
  def create
    @teaching_module = TeachingModule.new(teaching_module_params)

    if @teaching_module.save
      render json: @teaching_module, status: :created, location: @teaching_module
    else
      render json: @teaching_module.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /teaching_modules/1
  def update
    if @teaching_module.update(teaching_module_params)
      render json: @teaching_module
    else
      render json: @teaching_module.errors, status: :unprocessable_entity
    end
  end

  # DELETE /teaching_modules/1
  def destroy
    @teaching_module.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teaching_module
      @teaching_module = TeachingModule.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def teaching_module_params
      params.require(:teaching_module).permit(:teaching_module_title, :teaching_module_description)
    end
end
