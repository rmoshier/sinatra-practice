require 'sinatra'
require './lib/post'

class MyApp < Sinatra::Base

  get "/" do #creating a place that you can go to on the internet
    @posts = Post.all
    erb :index
  end

  post "/" do
    puts params.inspect
    # add input into database
    redirect to("/")
  end

  get "/about-me" do
    erb :about_me
  end

  get "/contact" do
    erb :contact
  end

  get "/posts/:date/:my_posts" do
    erb "/posts/#{params[:date]}/#{params[:my_posts]}".to_sym
  end

  get "/pudding_experience" do
    erb :pudding_experience
  end

  get "/:id" do
    params.inspect
  end
end

# http://rachel-sinatra.herokuapp.com/
# http://localhost:9292/
