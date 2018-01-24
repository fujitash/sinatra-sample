require_relative "../controller/sinatra-sample/index"
require_relative "../controller/sinatra-sample/about"
require_relative "../controller/sinatra-sample/comment"
require_relative "../controller/sinatra-sample/new"

class SampleApp < Sinatra::Base

  get "/" do
    controller = SinatraSample::IndexController.new
    controller.main
    @title = controller.title
    @content = controller.content
    erb :"sinatra-sample/index"
  end

  get "/about" do
    controller = SinatraSample::AboutController.new
    controller.main
    @title = controller.title
    @content = controller.content
    @email = controller.email
    erb :"sinatra-sample/about"
  end

  get "/comment" do
    controller = SinatraSample::CommentController.new
    controller.main
    @title = controller.title
    @comments = controller.comments
    erb :"sinatra-sample/comment"
  end

  post "/new" do
    controller = SinatraSample::NewController.new
    controller.main(params)
    redirect '/comment'
  end


end
