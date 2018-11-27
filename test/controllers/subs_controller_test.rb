require 'test_helper'

class SubsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subs_index_url
    assert_response :success
  end

  test "should get show" do
    get subs_show_url
    assert_response :success
  end

  test "should get new" do
    get subs_new_url
    assert_response :success
  end

  test "should get eidt" do
    get subs_eidt_url
    assert_response :success
  end

end
