require 'spec_helper'

describe "MyApp" do
  describe "health" do
    it "should be a JSON response" do
      get "/health"
      last_response.content_type.should match /application\/json/
    end

    it "should have a success message" do
      get "/health"
      last_response.body.should match /"message":"ok"/
    end
  end
end