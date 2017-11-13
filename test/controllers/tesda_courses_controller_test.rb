require 'test_helper'

class TesdaCoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tesda_course = tesda_courses(:one)
  end

  test "should get index" do
    get tesda_courses_url
    assert_response :success
  end

  test "should get new" do
    get new_tesda_course_url
    assert_response :success
  end

  test "should create tesda_course" do
    assert_difference('TesdaCourse.count') do
      post tesda_courses_url, params: { tesda_course: { tc_hrs_dur: @tesda_course.tc_hrs_dur, tc_name: @tesda_course.tc_name, tesda_course_sector_id: @tesda_course.tesda_course_sector_id } }
    end

    assert_redirected_to tesda_course_url(TesdaCourse.last)
  end

  test "should show tesda_course" do
    get tesda_course_url(@tesda_course)
    assert_response :success
  end

  test "should get edit" do
    get edit_tesda_course_url(@tesda_course)
    assert_response :success
  end

  test "should update tesda_course" do
    patch tesda_course_url(@tesda_course), params: { tesda_course: { tc_hrs_dur: @tesda_course.tc_hrs_dur, tc_name: @tesda_course.tc_name, tesda_course_sector_id: @tesda_course.tesda_course_sector_id } }
    assert_redirected_to tesda_course_url(@tesda_course)
  end

  test "should destroy tesda_course" do
    assert_difference('TesdaCourse.count', -1) do
      delete tesda_course_url(@tesda_course)
    end

    assert_redirected_to tesda_courses_url
  end
end
