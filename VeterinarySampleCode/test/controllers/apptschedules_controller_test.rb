require 'test_helper'

class ApptschedulesControllerTest < ActionController::TestCase
  setup do
    @apptschedule = apptschedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apptschedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apptschedule" do
    assert_difference('Apptschedule.count') do
      post :create, apptschedule: { customer: @apptschedule.customer, date_of_visit: @apptschedule.date_of_visit, doctor: @apptschedule.doctor, pet_name: @apptschedule.pet_name, reminder_flag: @apptschedule.reminder_flag, visit_reason: @apptschedule.visit_reason }
    end

    assert_redirected_to apptschedule_path(assigns(:apptschedule))
  end

  test "should show apptschedule" do
    get :show, id: @apptschedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apptschedule
    assert_response :success
  end

  test "should update apptschedule" do
    patch :update, id: @apptschedule, apptschedule: { customer: @apptschedule.customer, date_of_visit: @apptschedule.date_of_visit, doctor: @apptschedule.doctor, pet_name: @apptschedule.pet_name, reminder_flag: @apptschedule.reminder_flag, visit_reason: @apptschedule.visit_reason }
    assert_redirected_to apptschedule_path(assigns(:apptschedule))
  end

  test "should destroy apptschedule" do
    assert_difference('Apptschedule.count', -1) do
      delete :destroy, id: @apptschedule
    end

    assert_redirected_to apptschedules_path
  end
end
