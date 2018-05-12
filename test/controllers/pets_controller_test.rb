require 'test_helper'

class PetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pet = pets(:one)
  end

  test "should get index" do
    get pets_url, as: :json
    assert_response :success
  end

  test "should create pet" do
    assert_difference('Pet.count') do
      post pets_url, params: { pet: { birthdate: @pet.birthdate, breed: @pet.breed, castrado: @pet.castrado, color: @pet.color, description: @pet.description, dewormed: @pet.dewormed, genre: @pet.genre, name: @pet.name, pet_type: @pet.pet_type, related_location: @pet.related_location, size: @pet.size, user_id: @pet.user_id, vacunas: @pet.vacunas } }, as: :json
    end

    assert_response 201
  end

  test "should show pet" do
    get pet_url(@pet), as: :json
    assert_response :success
  end

  test "should update pet" do
    patch pet_url(@pet), params: { pet: { birthdate: @pet.birthdate, breed: @pet.breed, castrado: @pet.castrado, color: @pet.color, description: @pet.description, dewormed: @pet.dewormed, genre: @pet.genre, name: @pet.name, pet_type: @pet.pet_type, related_location: @pet.related_location, size: @pet.size, user_id: @pet.user_id, vacunas: @pet.vacunas } }, as: :json
    assert_response 200
  end

  test "should destroy pet" do
    assert_difference('Pet.count', -1) do
      delete pet_url(@pet), as: :json
    end

    assert_response 204
  end
end
