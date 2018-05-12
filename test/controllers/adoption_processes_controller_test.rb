require 'test_helper'

class AdoptionProcessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adoption_process = adoption_processes(:one)
  end

  test "should get index" do
    get adoption_processes_url, as: :json
    assert_response :success
  end

  test "should create adoption_process" do
    assert_difference('AdoptionProcess.count') do
      post adoption_processes_url, params: { adoption_process: { date: @adoption_process.date, publication_id: @adoption_process.publication_id, status: @adoption_process.status, user_id: @adoption_process.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show adoption_process" do
    get adoption_process_url(@adoption_process), as: :json
    assert_response :success
  end

  test "should update adoption_process" do
    patch adoption_process_url(@adoption_process), params: { adoption_process: { date: @adoption_process.date, publication_id: @adoption_process.publication_id, status: @adoption_process.status, user_id: @adoption_process.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy adoption_process" do
    assert_difference('AdoptionProcess.count', -1) do
      delete adoption_process_url(@adoption_process), as: :json
    end

    assert_response 204
  end
end
