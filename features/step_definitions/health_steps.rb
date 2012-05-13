Given /^I am viewing "(.*?)"$/ do |url|
  get "#{url}"
end

Then /^the response should be json$/ do
  last_response.content_type.should match /application\/json/
end

Then /^the JSON response should be:$/ do |json|
  last_response.body.should eql json
end

