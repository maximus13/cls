require 'test_helper'

class ListingsControllerTest < ActionController::TestCase
  setup do
    @listing = listings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:listings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create listing" do
    assert_difference('Listing.count') do
      post :create, listing: { Posting: @listing.Posting, Xstreet: @listing.Xstreet, bathooms: @listing.bathooms, bedrooms: @listing.bedrooms, city: @listing.city, description: @listing.description, password: @listing.password, rent: @listing.rent, sqft: @listing.sqft, state: @listing.state, street: @listing.street, title: @listing.title, username: @listing.username, zip: @listing.zip }
    end

    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should show listing" do
    get :show, id: @listing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @listing
    assert_response :success
  end

  test "should update listing" do
    patch :update, id: @listing, listing: { Posting: @listing.Posting, Xstreet: @listing.Xstreet, bathooms: @listing.bathooms, bedrooms: @listing.bedrooms, city: @listing.city, description: @listing.description, password: @listing.password, rent: @listing.rent, sqft: @listing.sqft, state: @listing.state, street: @listing.street, title: @listing.title, username: @listing.username, zip: @listing.zip }
    assert_redirected_to listing_path(assigns(:listing))
  end

  test "should destroy listing" do
    assert_difference('Listing.count', -1) do
      delete :destroy, id: @listing
    end

    assert_redirected_to listings_path
  end
end
