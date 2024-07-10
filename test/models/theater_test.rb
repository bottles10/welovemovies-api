require "test_helper"

class TheaterTest < ActiveSupport::TestCase
  setup do 
    @theater = theaters(:one)
  end

 test "validates all theater attributes" do
  theater = @theater.dup
  theater.name = ""
  theater.address = ""
  theater.city = ""
  theater.state = "1"
  theater.zip = "888"

  assert_not theater.valid?
 end

 test "Should save valid theater" do
  assert @theater.valid?
 end

 test "Should upcase state before save" do
    theater = Theater.new(name: "Example Theater", address: "123 Main St", city: "Seattle", state: "wa", zip: "98101")
    theater.save
    assert "WA", theater.state
 end

end
