require 'test_helper'

class RegionalDataRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @regional_data_record = regional_data_records(:one)
  end

  test "should get index" do
    get regional_data_records_url
    assert_response :success
  end

  test "should get new" do
    get new_regional_data_record_url
    assert_response :success
  end

  test "should create regional_data_record" do
    assert_difference('RegionalDataRecord.count') do
      post regional_data_records_url, params: { regional_data_record: { SUCs_main: @regional_data_record.SUCs_main, SUCs_sat: @regional_data_record.SUCs_sat, acadyr: @regional_data_record.acadyr, ched_supervised_institution: @regional_data_record.ched_supervised_institution, cost_per_stud: @regional_data_record.cost_per_stud, integer: @regional_data_record.integer, local_colleges_and_uni: @regional_data_record.local_colleges_and_uni, other_govt_schools: @regional_data_record.other_govt_schools, private_nonsec: @regional_data_record.private_nonsec, private_sec: @regional_data_record.private_sec, region_id: @regional_data_record.region_id, release_date: @regional_data_record.release_date, special_HEI: @regional_data_record.special_HEI } }
    end

    assert_redirected_to regional_data_record_url(RegionalDataRecord.last)
  end

  test "should show regional_data_record" do
    get regional_data_record_url(@regional_data_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_regional_data_record_url(@regional_data_record)
    assert_response :success
  end

  test "should update regional_data_record" do
    patch regional_data_record_url(@regional_data_record), params: { regional_data_record: { SUCs_main: @regional_data_record.SUCs_main, SUCs_sat: @regional_data_record.SUCs_sat, acadyr: @regional_data_record.acadyr, ched_supervised_institution: @regional_data_record.ched_supervised_institution, cost_per_stud: @regional_data_record.cost_per_stud, integer: @regional_data_record.integer, local_colleges_and_uni: @regional_data_record.local_colleges_and_uni, other_govt_schools: @regional_data_record.other_govt_schools, private_nonsec: @regional_data_record.private_nonsec, private_sec: @regional_data_record.private_sec, region_id: @regional_data_record.region_id, release_date: @regional_data_record.release_date, special_HEI: @regional_data_record.special_HEI } }
    assert_redirected_to regional_data_record_url(@regional_data_record)
  end

  test "should destroy regional_data_record" do
    assert_difference('RegionalDataRecord.count', -1) do
      delete regional_data_record_url(@regional_data_record)
    end

    assert_redirected_to regional_data_records_url
  end
end
