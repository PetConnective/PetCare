class PetPhotosController < ApplicationController
  before_action :set_pet_photo, only: [:show, :update, :destroy]

  # GET /pet_photos
  def index
    @pet_photos = PetPhoto.all

    render json: @pet_photos
  end

  # GET /pet_photos/1
  def show
    render json: @pet_photo
  end

  # POST /pet_photos
  def create
    @pet_photo = PetPhoto.new(pet_photo_params)

    if @pet_photo.save
      render json: @pet_photo, status: :created, location: @pet_photo
    else
      render json: @pet_photo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /pet_photos/1
  def update
    if @pet_photo.update(pet_photo_params)
      render json: @pet_photo
    else
      render json: @pet_photo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /pet_photos/1
  def destroy
    @pet_photo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pet_photo
      @pet_photo = PetPhoto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def pet_photo_params
      params.require(:pet_photo).permit(:pet_id, :user_id, :photo_path, :profile_photo)
    end
end
