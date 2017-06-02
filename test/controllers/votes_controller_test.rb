require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vote = votes(:one)
  end

  test "should get index" do
    get votes_url, as: :json
    assert_response :success
  end

  test "should create vote" do
    assert_difference('Vote.count') do
      post votes_url, params: { vote: { argument_id: @vote.argument_id, condition_id: @vote.condition_id, description: @vote.description, title: @vote.title, user_id: @vote.user_id, value: @vote.value } }, as: :json
    end

    assert_response 201
  end

  test "should show vote" do
    get vote_url(@vote), as: :json
    assert_response :success
  end

  test "should update vote" do
    patch vote_url(@vote), params: { vote: { argument_id: @vote.argument_id, condition_id: @vote.condition_id, description: @vote.description, title: @vote.title, user_id: @vote.user_id, value: @vote.value } }, as: :json
    assert_response 200
  end

  test "should destroy vote" do
    assert_difference('Vote.count', -1) do
      delete vote_url(@vote), as: :json
    end

    assert_response 204
  end
end
