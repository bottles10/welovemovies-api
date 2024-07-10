require "test_helper"

class TheatersControllerTest < ActionDispatch::IntegrationTest
  test "Valid theater creation" do
    assert_difference "Theater.count", 1 do 
      post theaters_path, params: { theater: {
        
                                          name: "Regal City Center",
                                          address: "801 C St.",
                                          address_line_2: "",
                                          city: "Vancouver",
                                          state: "WA",
                                          zip: "98660"
      }}

      puts response.body
    end

    assert_response :created
  end

  test "Invalid theater creation" do
    assert_no_difference "Theater.count" do
      post theaters_path, params: { theater: {
        
                                        name: "",
                                        address: "",
                                        address_line_2: "",
                                        city: "Vancouver",
                                        state: "WA",
                                        zip: "98660" 
    }}

    puts response.body
    end
    
    assert_response :unprocessable_entity
  end

end
