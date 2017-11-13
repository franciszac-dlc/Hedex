require 'test_helper'

class DataRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @data_record = data_records(:one)
  end

  test "should get index" do
    get data_records_url
    assert_response :success
  end

  test "should get new" do
    get new_data_record_url
    assert_response :success
  end

  test "should create data_record" do
    assert_difference('DataRecord.count') do
      post data_records_url, params: { data_record: { acadyr_termno: @data_record.acadyr_termno, cost_per_stud: @data_record.cost_per_stud, enrolled: @data_record.enrolled, graduated: @data_record.graduated, institution_id: @data_record.institution_id, release_date: @data_record.release_date, stud_count: @data_record.stud_count } }
    end

    assert_redirected_to data_record_url(DataRecord.last)
  end

  test "should show data_record" do
    get data_record_url(@data_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_data_record_url(@data_record)
    assert_response :success
  end

  test "should update data_record" do
    patch data_record_url(@data_record), params: { data_record: { acadyr_termno: @data_record.acadyr_termno, cost_per_stud: @data_record.cost_per_stud, enrolled: @data_record.enrolled, graduated: @data_record.graduated, institution_id: @data_record.institution_id, release_date: @data_record.release_date, stud_count: @data_record.stud_count } }
    assert_redirected_to data_record_url(@data_record)
  end

  test "should destroy data_record" do
    assert_difference('DataRecord.count', -1) do
      delete data_record_url(@data_record)
    end

    assert_redirected_to data_records_url
  end
end
