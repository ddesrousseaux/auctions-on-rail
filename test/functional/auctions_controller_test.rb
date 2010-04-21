require 'test_helper'

class AuctionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:auctions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create auction" do
    assert_difference('Auction.count') do
      post :create, :auction => { }
    end

    assert_redirected_to auction_path(assigns(:auction))
  end

  test "should show auction" do
    get :show, :id => auctions(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => auctions(:one).to_param
    assert_response :success
  end

  test "should update auction" do
    put :update, :id => auctions(:one).to_param, :auction => { }
    assert_redirected_to auction_path(assigns(:auction))
  end

  test "should destroy auction" do
    assert_difference('Auction.count', -1) do
      delete :destroy, :id => auctions(:one).to_param
    end

    assert_redirected_to auctions_path
  end
end
