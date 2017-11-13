require 'test_helper'

class TesdaCourseSectorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tesda_course_sector = tesda_course_sectors(:one)
  end

  test "should get index" do
    get tesda_course_sectors_url
    assert_response :success
  end

  test "should get new" do
    get new_tesda_course_sector_url
    assert_response :success
  end

  test "should create tesda_course_sector" do
    assert_difference('TesdaCourseSector.count') do
      post tesda_course_sectors_url, params: { tesda_course_sector: { tcs_desc: @tesda_course_sector.tcs_desc, tcs_name: @tesda_course_sector.tcs_name } }
    end

    assert_redirected_to tesda_course_sector_url(TesdaCourseSector.last)
  end

  test "should show tesda_course_sector" do
    get tesda_course_sector_url(@tesda_course_sector)
    assert_response :success
  end

  test "should get edit" do
    get edit_tesda_course_sector_url(@tesda_course_sector)
    assert_response :success
  end

  test "should update tesda_course_sector" do
    patch tesda_course_sector_url(@tesda_course_sector), params: { tesda_course_sector: { tcs_desc: @tesda_course_sector.tcs_desc, tcs_name: @tesda_course_sector.tcs_name } }
    assert_redirected_to tesda_course_sector_url(@tesda_course_sector)
  end

  test "should destroy tesda_course_sector" do
    assert_difference('TesdaCourseSector.count', -1) do
      delete tesda_course_sector_url(@tesda_course_sector)
    end

    assert_redirected_to tesda_course_sectors_url
  end
end
