require "test_helper"

class CriticsControllerTest < ActionDispatch::IntegrationTest
  setup  do
    @critic = critics(:one)
  end

  test "Valid critic creation" do
    assert_difference "Critic.count", 1 do
      post critics_path, params: { critic: { preferred_name: @critic.preferred_name,
                                            surname: @critic.surname,
                                            organization_name: @critic.organization_name }}
      puts response.body
    end 
    
    assert_response :created
  end

  test "Invalid critic creation" do
    assert_no_difference "Critic.count" do
      post critics_path, params: { critic: { preferred_name: "",
                                            surname: "",
                                            organization_name: @critic.organization_name }}
      puts response.body
    end

    assert_response :unprocessable_entity
  end
end
