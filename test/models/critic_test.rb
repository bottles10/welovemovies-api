require "test_helper"

class CriticTest < ActiveSupport::TestCase
  setup do
    @critic = critics(:one)
  end

  test "validates all critic attributes" do
    critic = Critic.new
    critic.preferred_name = ""
    critic.surname = ""
    critic.organization_name = ""
  
    assert_not critic.valid?
  end

  test "should save valid critic" do
    assert @critic.valid?
  end
end
