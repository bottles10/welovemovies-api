require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "Get index path" do
    get reviews_path

    assert_response :success
    json_response = JSON.parse(response.body)
    assert_instance_of Array, json_response
    assert_not_empty json_response
  end
end
