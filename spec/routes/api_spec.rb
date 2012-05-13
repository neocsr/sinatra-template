require 'spec_helper'

describe "MyApp" do
  describe "health" do
    it "should be JSON response" do
      get "/health"
      last_response.content_type.should match /application\/json/
    end
  end
end