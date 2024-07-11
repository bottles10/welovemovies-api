require "test_helper"

class ReviewTest < ActiveSupport::TestCase
  setup do
    @review = reviews(:one)
  end
  test "Validates review attributes" do
    review = @review.dup
    review.content = ""
    review.score = ""
    review.critic_id = ""

    assert_not review.valid?
  end

  test "should save valid review" do
    assert @review.valid?
  end

end
