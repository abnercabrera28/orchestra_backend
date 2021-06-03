class OrchestrasController < ApplicationController
  before_action :set_orchestra, only: [:show, :update, :destroy]

  # GET /orchestras
  def index
    @orchestras = Orchestra.all

    render json: @orchestras, only: [:id, :name], include: {
      instruments: {
        except: [:created_at, :updated_at]
      }
    }
  end

  # GET /orchestras/1
  def show
    render json: @orchestra
  end

  # POST /orchestras
  def create
    @orchestra = Orchestra.new(orchestra_params)

    if @orchestra.save
      render json: {
        status: 201,
        orchestra: @orchestra 
      }, status: :created, location: @orchestra
    else
      render json: {
        status: 422,
        errors: @orchestra.errors.full_messages.join(", ")
      }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /orchestras/1
  def update
    if @orchestra.update(orchestra_params)
      render json: {
        status: 204,
        orchestra: @orchestra
    }
    else
      render json: {
        status: 400,
        errors: @orchestra.errors.full_messages.join(", ") 
      }, status: :unprocessable_entity
    end
  end

  # DELETE /orchestras/1
  def destroy
    if @orchestra.destroy
      render json: {message: "Successfully deleted", orchestra: @orchestra}
    else
      render json: {message: "Failed to delete"}
    end
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
