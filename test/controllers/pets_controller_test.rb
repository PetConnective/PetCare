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
      post pets_url, params: { pet: { age: @pet.age, breed: @pet.breed, color: @pet.color, date: @pet.date, dewormed: @pet.dewormed, gender: @pet.gender, latitude: @pet.latitude, longitude: @pet.longitude, name: @pet.name, neutered: @pet.neutered, notes: @pet.notes, price: @pet.price, size: @pet.size, status: @pet.status, type: @pet.type, user_id: @pet.user_id, vaccined: @pet.vaccined } }, as: :json
    end

    assert_response 201
  end

  test "should show pet" do
    get pet_url(@pet), as: :json
    assert_response :success
  end

  test "should update pet" do
    patch pet_url(@pet), params: { pet: { age: @pet.age, breed: @pet.breed, color: @pet.color, date: @pet.date, dewormed: @pet.dewormed, gender: @pet.gender, latitude: @pet.latitude, longitude: @pet.longitude, name: @pet.name, neutered: @pet.neutered, notes: @pet.notes, price: @pet.price, size: @pet.size, status: @pet.status, type: @pet.type, user_id: @pet.user_id, vaccined: @pet.vaccined } }, as: :json
    assert_response 200
  end

  test "should destroy pet" do
    assert_difference('Pet.count', -1) do
      delete pet_url(@pet), as: :json
    end

    assert_response 204
  end
end
