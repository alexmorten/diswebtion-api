require 'test_helper'

class SidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @side = sides(:one)
  end

  test "should get index" do
    get sides_url, as: :json
    assert_response :success
  end

  test "should create side" do
    assert_difference('Side.count') do
      post sides_url, params: { side: { description: @side.description, title: @side.title, topic_id: @side.topic_id } }, as: :json
    end

    assert_response 201
  end

  test "should show side" do
    get side_url(@side), as: :json
    assert_response :success
  end

  test "should update side" do
    patch side_url(@side), params: { side: { description: @side.description, title: @side.title, topic_id: @side.topic_id } }, as: :json
    assert_response 200
  end

  test "should destroy side" do
    assert_difference('Side.count', -1) do
      delete side_url(@side), as: :json
    end

    assert_response 204
  end
end
