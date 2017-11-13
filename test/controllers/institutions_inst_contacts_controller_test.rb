require 'test_helper'

class InstitutionsInstContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @institutions_inst_contact = institutions_inst_contacts(:one)
  end

  test "should get index" do
    get institutions_inst_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_institutions_inst_contact_url
    assert_response :success
  end

  test "should create institutions_inst_contact" do
    assert_difference('InstitutionsInstContact.count') do
      post institutions_inst_contacts_url, params: { institutions_inst_contact: {  } }
    end

    assert_redirected_to institutions_inst_contact_url(InstitutionsInstContact.last)
  end

  test "should show institutions_inst_contact" do
    get institutions_inst_contact_url(@institutions_inst_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_institutions_inst_contact_url(@institutions_inst_contact)
    assert_response :success
  end

  test "should update institutions_inst_contact" do
    patch institutions_inst_contact_url(@institutions_inst_contact), params: { institutions_inst_contact: {  } }
    assert_redirected_to institutions_inst_contact_url(@institutions_inst_contact)
  end

  test "should destroy institutions_inst_contact" do
    assert_difference('InstitutionsInstContact.count', -1) do
      delete institutions_inst_contact_url(@institutions_inst_contact)
    end

    assert_redirected_to institutions_inst_contacts_url
  end
end
