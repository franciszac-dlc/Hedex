require 'test_helper'

class FacultyHeadcountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @faculty_headcount = faculty_headcounts(:one)
  end

  test "should get index" do
    get faculty_headcounts_url
    assert_response :success
  end

  test "should get new" do
    get new_faculty_headcount_url
    assert_response :success
  end

  test "should create faculty_headcount" do
    assert_difference('FacultyHeadcount.count') do
      post faculty_headcounts_url, params: { faculty_headcount: { acadyr_termno: @faculty_headcount.acadyr_termno, bacc: @faculty_headcount.bacc, institution_id: @faculty_headcount.institution_id, maintainer: @faculty_headcount.maintainer, ms_ma: @faculty_headcount.ms_ma, phd: @faculty_headcount.phd, release_date: @faculty_headcount.release_date } }
    end

    assert_redirected_to faculty_headcount_url(FacultyHeadcount.last)
  end

  test "should show faculty_headcount" do
    get faculty_headcount_url(@faculty_headcount)
    assert_response :success
  end

  test "should get edit" do
    get edit_faculty_headcount_url(@faculty_headcount)
    assert_response :success
  end

  test "should update faculty_headcount" do
    patch faculty_headcount_url(@faculty_headcount), params: { faculty_headcount: { acadyr_termno: @faculty_headcount.acadyr_termno, bacc: @faculty_headcount.bacc, institution_id: @faculty_headcount.institution_id, maintainer: @faculty_headcount.maintainer, ms_ma: @faculty_headcount.ms_ma, phd: @faculty_headcount.phd, release_date: @faculty_headcount.release_date } }
    assert_redirected_to faculty_headcount_url(@faculty_headcount)
  end

  test "should destroy faculty_headcount" do
    assert_difference('FacultyHeadcount.count', -1) do
      delete faculty_headcount_url(@faculty_headcount)
    end

    assert_redirected_to faculty_headcounts_url
  end
end
