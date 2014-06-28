require 'test_helper'

class VenuesControllerTest < ActionController::TestCase
  setup do
    @venue = venues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create venue" do
    assert_difference('Venue.count') do
      post :create, venue: { address: @venue.address, booking_count: @venue.booking_count, capacity: @venue.capacity, caterers: @venue.caterers, classification: @venue.classification, comments: @venue.comments, contact_numbers: @venue.contact_numbers, contact_persons: @venue.contact_persons, email: @venue.email, environment: @venue.environment, freeroom_count: @venue.freeroom_count, is_booked: @venue.is_booked, is_featured: @venue.is_featured, location: @venue.location, name: @venue.name, policy: @venue.policy, rates: @venue.rates, status: @venue.status, user_id: @venue.user_id }
    end

    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should show venue" do
    get :show, id: @venue
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @venue
    assert_response :success
  end

  test "should update venue" do
    patch :update, id: @venue, venue: { address: @venue.address, booking_count: @venue.booking_count, capacity: @venue.capacity, caterers: @venue.caterers, classification: @venue.classification, comments: @venue.comments, contact_numbers: @venue.contact_numbers, contact_persons: @venue.contact_persons, email: @venue.email, environment: @venue.environment, freeroom_count: @venue.freeroom_count, is_booked: @venue.is_booked, is_featured: @venue.is_featured, location: @venue.location, name: @venue.name, policy: @venue.policy, rates: @venue.rates, status: @venue.status, user_id: @venue.user_id }
    assert_redirected_to venue_path(assigns(:venue))
  end

  test "should destroy venue" do
    assert_difference('Venue.count', -1) do
      delete :destroy, id: @venue
    end

    assert_redirected_to venues_path
  end
end
