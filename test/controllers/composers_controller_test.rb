require 'test_helper'

class ComposersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @composer = composers(:one)
  end

  test "should get index" do
    get composers_url, as: :json
    assert_response :success
  end

  test "should create composer" do
    assert_difference('Composer.count') do
      post composers_url, params: { composer: { birth_date: @composer.birth_date, death_date: @composer.death_date, description: @composer.description, era_id: @composer.era_id, famous_piece: @composer.famous_piece, name: @composer.name } }, as: :json
    end

    assert_response 201
  end

  test "should show composer" do
    get composer_url(@composer), as: :json
    assert_response :success
  end

  test "should update composer" do
    patch composer_url(@composer), params: { composer: { birth_date: @composer.birth_date, death_date: @composer.death_date, description: @composer.description, era_id: @composer.era_id, famous_piece: @composer.famous_piece, name: @composer.name } }, as: :json
    assert_response 200
  end

  test "should destroy composer" do
    assert_difference('Composer.count', -1) do
      delete composer_url(@composer), as: :json
    end

    assert_response 204
  end
end
