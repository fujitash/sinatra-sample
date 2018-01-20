require_relative "../controller/hello/hello"
require_relative "../controller/hello/hello-name"

class SampleApp < Sinatra::Base

  get '/hello' do
    Hello::HelloController.new.main
  end

  get "/hello/:name" do
    Hello::HelloNameController.new.main(params)
  end

end
