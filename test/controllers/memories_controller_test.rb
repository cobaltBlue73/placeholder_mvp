require 'test_helper'

class MemoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get memories_index_url
    assert_response :success
  end

  test "should get new" do
    get memories_new_url
    assert_response :success
  end

  test "should get create" do
    get memories_create_url
    assert_response :success
  end

end
