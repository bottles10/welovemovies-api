require "test_helper"

class MovieTest < ActiveSupport::TestCase
  setup do
    @movie = movies(:one)
  end
  test "Validates all movie attributes" do
    movie = @movie.dup
    movie.title = ""
    movie.description = ""
    movie.rating = ""
    movie.image_url = ""
    movie.runtime_in_minutes = ""

    movie.save
    assert_not movie.valid?
  end

  test "should save valid movie" do
    assert @movie.valid?
  end
end
