class AdoptionProcessesController < ApplicationController
  before_action :set_adoption_process, only: [:show, :update, :destroy]

  # GET /adoption_processes
  def index
    @adoption_processes = AdoptionProcess.all

    render json: @adoption_processes
  end

  # GET /adoption_processes/1
  def show
    render json: @adoption_process
  end

  # POST /adoption_processes
  def create
    @adoption_process = AdoptionProcess.new(adoption_process_params)

    if @adoption_process.save
      render json: @adoption_process, status: :created, location: @adoption_process
    else
      render json: @adoption_process.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adoption_processes/1
  def update
    if @adoption_process.update(adoption_process_params)
      render json: @adoption_process
    else
      render json: @adoption_process.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adoption_processes/1
  def destroy
    @adoption_process.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adoption_process
      @adoption_process = AdoptionProcess.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adoption_process_params
      params.require(:adoption_process).permit(:user_id, :publication_id, :date, :status)
    end
end
