require 'test_helper'

class TuitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tuition = tuitions(:one)
  end

  test "should get index" do
    get tuitions_url
    assert_response :success
  end

  test "should get new" do
    get new_tuition_url
    assert_response :success
  end

  test "should create tuition" do
    assert_difference('Tuition.count') do
      post tuitions_url, params: { tuition: { acadyr_termno: @tuition.acadyr_termno, bacc: @tuition.bacc, institution_id: @tuition.institution_id, ms_ma: @tuition.ms_ma, phd: @tuition.phd, release_date: @tuition.release_date } }
    end

    assert_redirected_to tuition_url(Tuition.last)
  end

  test "should show tuition" do
    get tuition_url(@tuition)
    assert_response :success
  end

  test "should get edit" do
    get edit_tuition_url(@tuition)
    assert_response :success
  end

  test "should update tuition" do
    patch tuition_url(@tuition), params: { tuition: { acadyr_termno: @tuition.acadyr_termno, bacc: @tuition.bacc, institution_id: @tuition.institution_id, ms_ma: @tuition.ms_ma, phd: @tuition.phd, release_date: @tuition.release_date } }
    assert_redirected_to tuition_url(@tuition)
  end

  test "should destroy tuition" do
    assert_difference('Tuition.count', -1) do
      delete tuition_url(@tuition)
    end

    assert_redirected_to tuitions_url
  end
end
