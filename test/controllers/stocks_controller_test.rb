require 'test_helper'

class StocksControllerTest < ActionController::TestCase
  setup do
    @stock = stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock" do
    assert_difference('Stock.count') do
      post :create, stock: { amount: @stock.amount, buy_date: @stock.buy_date, buy_tax: @stock.buy_tax, current_income: @stock.current_income, initial_income: @stock.initial_income, name: @stock.name, wallet_id: @stock.wallet_id }
    end

    assert_redirected_to stock_path(assigns(:stock))
  end

  test "should show stock" do
    get :show, id: @stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock
    assert_response :success
  end

  test "should update stock" do
    patch :update, id: @stock, stock: { amount: @stock.amount, buy_date: @stock.buy_date, buy_tax: @stock.buy_tax, current_income: @stock.current_income, initial_income: @stock.initial_income, name: @stock.name, wallet_id: @stock.wallet_id }
    assert_redirected_to stock_path(assigns(:stock))
  end

  test "should destroy stock" do
    assert_difference('Stock.count', -1) do
      delete :destroy, id: @stock
    end

    assert_redirected_to stocks_path
  end
end
