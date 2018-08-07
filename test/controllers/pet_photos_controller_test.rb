require 'test_helper'

class PetPhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet_photo = pet_photos(:one)
  end

  test "should get index" do
    get pet_photos_url, as: :json
    assert_response :success
  end

  test "should create pet_photo" do
    assert_difference('PetPhoto.count') do
      post pet_photos_url, params: { pet_photo: { pet_id: @pet_photo.pet_id, photo_path: @pet_photo.photo_path, profile_photo: @pet_photo.profile_photo, user_id: @pet_photo.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show pet_photo" do
    get pet_photo_url(@pet_photo), as: :json
    assert_response :success
  end

  test "should update pet_photo" do
    patch pet_photo_url(@pet_photo), params: { pet_photo: { pet_id: @pet_photo.pet_id, photo_path: @pet_photo.photo_path, profile_photo: @pet_photo.profile_photo, user_id: @pet_photo.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy pet_photo" do
    assert_difference('PetPhoto.count', -1) do
      delete pet_photo_url(@pet_photo), as: :json
    end

    assert_response 204
  end
end
