require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  # responds with a 200
  # displays the reversed string
  post '/reverse' do
    original_string = params[:string]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  # responds with a 200
  # displays friends in the view
  get '/friends' do
    # Write your code here!
    @friends = ["Emily Wilding Davison", "Harriet Tubman", "Joan of Arc", "Malala Yousafzai", "Sojourner Truth"]
    erb :friends
  end
end