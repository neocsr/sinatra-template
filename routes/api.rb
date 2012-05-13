class MyApp < Sinatra::Base

  before do
    content_type "application/json"
  end

  get "/health" do
    {:message => "ok"}.to_json
  end

end
