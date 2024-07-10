require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "Valid movie creation" do
    assert_difference "Movie.count", 1 do
      post movies_path, params: { movie: {
                                    "title": "new movie from postmon",
                                    "rating": "pg",
                                    "description": "This is a very long description",
                                    "image_url": "movielinkdowmonewhere",
                                    "runtime_in_minutes": 123 }}
      puts response.body
    end

    assert_response :created
  end

  test "Invalid movie creation" do 
    assert_no_difference "Movie.count" do
      post movies_path, params: { movie: {
                                    "title": "",
                                    "rating": "pg",
                                    "description": "This is a very long description",
                                    "image_url": "",
                                    "runtime_in_minutes": 123 }}
      puts response.body
    end


    assert_response :unprocessable_entity
  end


end
