class OrchestrasController < ApplicationController
  before_action :set_orchestra, only: [:show, :update, :destroy]

  # GET /orchestras
  def index
    @orchestras = Orchestra.all

    render json: @orchestras
  end

  # GET /orchestras/1
  def show
    render json: @orchestra
  end

  # POST /orchestras
  def create
    @orchestra = Orchestra.new(orchestra_params)

    if @orchestra.save
      render json: @orchestra, status: :created, location: @orchestra
    else
      render json: @orchestra.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orchestras/1
  def update
    if @orchestra.update(orchestra_params)
      render json: @orchestra
    else
      render json: @orchestra.errors, status: :unprocessable_entity
    end
  end

  # DELETE /orchestras/1
  def destroy
    @orchestra.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orchestra
      @orchestra = Orchestra.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def orchestra_params
      params.require(:orchestra).permit(:name)
    end
end