class HelloApp < Sinatra::Base

  get '/hello' do
    'Hello World!'
  end

  get "/hello/:name" do
    "hello #{params[:name]}"
  end

  get "/" do
    @title = "sinatra-sample"
    @content = "This is the sample page for sinatra."
    erb :index
  end

  get "/about" do
    @title = "sinatra-sample-about"
    @content = "This is the sample 'about' page for sinatra."
    @email = 'mail@gmail.com'
    erb :index
  end

  get "/sampleapp" do
    @title = "Sample Application"
    @comments = Comments.order("id desc").all
    erb :sampleapp
  end

  post "/new" do
    Comments.create({:body => params[:body]})
    redirect '/sampleapp'
  end

end
