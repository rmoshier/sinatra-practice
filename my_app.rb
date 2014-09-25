require 'sinatra'
require './lib/post'

class MyApp < Sinatra::Base

  get "/" do #creating a place that you can go to on the internet
    @posts = Post.all
    erb :index
  end

  get "/about-me" do
    erb :about_me
  end

  get "/cute_pictures_of_animals" do
    erb :cute_pictures_of_animals
  end

  get "/posts/:my_posts" do
    erb "/posts/#{params[:my_posts]}".to_sym
  end

  get "/pudding_experience" do
    erb :pudding_experience
  end

  get "/:id" do
    params.inspect
  end
end
