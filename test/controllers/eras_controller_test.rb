require 'test_helper'

class ErasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @era = eras(:one)
  end

  test "should get index" do
    get eras_url, as: :json
    assert_response :success
  end

  test "should create era" do
    assert_difference('Era.count') do
      post eras_url, params: { era: { date_beg: @era.date_beg, date_end: @era.date_end, description: @era.description, name: @era.name } }, as: :json
    end

    assert_response 201
  end

  test "should show era" do
    get era_url(@era), as: :json
    assert_response :success
  end

  test "should update era" do
    patch era_url(@era), params: { era: { date_beg: @era.date_beg, date_end: @era.date_end, description: @era.description, name: @era.name } }, as: :json
    assert_response 200
  end

  test "should destroy era" do
    assert_difference('Era.count', -1) do
      delete era_url(@era), as: :json
    end

    assert_response 204
  end
end
