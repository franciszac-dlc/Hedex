require 'test_helper'

class InstContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inst_contact = inst_contacts(:one)
  end

  test "should get index" do
    get inst_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_inst_contact_url
    assert_response :success
  end

  test "should create inst_contact" do
    assert_difference('InstContact.count') do
      post inst_contacts_url, params: { inst_contact: { contact_num: @inst_contact.contact_num, institution_id: @inst_contact.institution_id } }
    end

    assert_redirected_to inst_contact_url(InstContact.last)
  end

  test "should show inst_contact" do
    get inst_contact_url(@inst_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_inst_contact_url(@inst_contact)
    assert_response :success
  end

  test "should update inst_contact" do
    patch inst_contact_url(@inst_contact), params: { inst_contact: { contact_num: @inst_contact.contact_num, institution_id: @inst_contact.institution_id } }
    assert_redirected_to inst_contact_url(@inst_contact)
  end

  test "should destroy inst_contact" do
    assert_difference('InstContact.count', -1) do
      delete inst_contact_url(@inst_contact)
    end

    assert_redirected_to inst_contacts_url
  end
end
