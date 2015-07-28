require 'test_helper'

class VeterinarydocslistsControllerTest < ActionController::TestCase
  setup do
    @veterinarydocslist = veterinarydocslists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veterinarydocslists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veterinarydocslist" do
    assert_difference('Veterinarydocslist.count') do
      post :create, veterinarydocslist: { address: @veterinarydocslist.address, city: @veterinarydocslist.city, name: @veterinarydocslist.name, school_degree_recvd: @veterinarydocslist.school_degree_recvd, state: @veterinarydocslist.state, years_in_practice: @veterinarydocslist.years_in_practice, zip: @veterinarydocslist.zip }
    end

    assert_redirected_to veterinarydocslist_path(assigns(:veterinarydocslist))
  end

  test "should show veterinarydocslist" do
    get :show, id: @veterinarydocslist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veterinarydocslist
    assert_response :success
  end

  test "should update veterinarydocslist" do
    patch :update, id: @veterinarydocslist, veterinarydocslist: { address: @veterinarydocslist.address, city: @veterinarydocslist.city, name: @veterinarydocslist.name, school_degree_recvd: @veterinarydocslist.school_degree_recvd, state: @veterinarydocslist.state, years_in_practice: @veterinarydocslist.years_in_practice, zip: @veterinarydocslist.zip }
    assert_redirected_to veterinarydocslist_path(assigns(:veterinarydocslist))
  end

  test "should destroy veterinarydocslist" do
    assert_difference('Veterinarydocslist.count', -1) do
      delete :destroy, id: @veterinarydocslist
    end

    assert_redirected_to veterinarydocslists_path
  end
end
