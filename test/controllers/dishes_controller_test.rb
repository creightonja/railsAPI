require 'test_helper'

class DishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dish = dishes(:one)
  end

  test "should get index" do
    get dishes_url, as: :json
    assert_response :success
  end

  test "should create dish" do
    assert_difference('Dish.count') do
      post dishes_url, params: { dish: { category_rank: @dish.category_rank, global_rank: @dish.global_rank, name: @dish.name, primary_category: @dish.primary_category, restaurant_id: @dish.restaurant_id } }, as: :json
    end

    assert_response 201
  end

  test "should show dish" do
    get dish_url(@dish), as: :json
    assert_response :success
  end

  test "should update dish" do
    patch dish_url(@dish), params: { dish: { category_rank: @dish.category_rank, global_rank: @dish.global_rank, name: @dish.name, primary_category: @dish.primary_category, restaurant_id: @dish.restaurant_id } }, as: :json
    assert_response 200
  end

  test "should destroy dish" do
    assert_difference('Dish.count', -1) do
      delete dish_url(@dish), as: :json
    end

    assert_response 204
  end
end
