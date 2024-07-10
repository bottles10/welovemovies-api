require "test_helper"

class CinemasControllerTest < ActionDispatch::IntegrationTest
  test "should show is_showing" do
    get cinemas_path, params: { cinemas: { is_showing: true }}

    assert_response :ok
  end
end
