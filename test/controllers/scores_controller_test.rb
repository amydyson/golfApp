require 'test_helper'

class ScoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @score = scores(:one)
  end

  test "should get index" do
    get scores_url
    assert_response :success
  end

  test "should get new" do
    get new_score_url
    assert_response :success
  end

  test "should create score" do
    assert_difference('Score.count') do
      post scores_url, params: { score: { golfer_id: @score.golfer_id, h10: @score.h10, h11: @score.h11, h12: @score.h12, h13: @score.h13, h14: @score.h14, h15: @score.h15, h16: @score.h16, h17: @score.h17, h18: @score.h18, h1: @score.h1, h2: @score.h2, h3: @score.h3, h4: @score.h4, h5: @score.h5, h6: @score.h6, h7: @score.h7, h8: @score.h8, h9: @score.h9, tournament_id: @score.tournament_id } }
    end

    assert_redirected_to score_url(Score.last)
  end

  test "should show score" do
    get score_url(@score)
    assert_response :success
  end

  test "should get edit" do
    get edit_score_url(@score)
    assert_response :success
  end

  test "should update score" do
    patch score_url(@score), params: { score: { golfer_id: @score.golfer_id, h10: @score.h10, h11: @score.h11, h12: @score.h12, h13: @score.h13, h14: @score.h14, h15: @score.h15, h16: @score.h16, h17: @score.h17, h18: @score.h18, h1: @score.h1, h2: @score.h2, h3: @score.h3, h4: @score.h4, h5: @score.h5, h6: @score.h6, h7: @score.h7, h8: @score.h8, h9: @score.h9, tournament_id: @score.tournament_id } }
    assert_redirected_to score_url(@score)
  end

  test "should destroy score" do
    assert_difference('Score.count', -1) do
      delete score_url(@score)
    end

    assert_redirected_to scores_url
  end
end
