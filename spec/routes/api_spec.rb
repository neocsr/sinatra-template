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

  describe "counter" do
    it "should increment the counter in each request" do
      get '/counter'
      count1 = JSON.parse(last_response.body)["count"]
      get '/counter'
      count2 = JSON.parse(last_response.body)["count"]

      (count2 - count1).should eql 1
    end
  end
end