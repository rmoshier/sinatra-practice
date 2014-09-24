require 'sinatra'

class MyApp < Sinatra::Base
  get "/" do #creating a place that you can go to on the internet
    erb :index
  end

  get "/about-me" do
    "I am Momo."
  end
end
