require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @name = params[:name]
    @pg = params[:pg]
    @coach = params[:coach]
    @pf = params[:pf]
    @sg = params[:sg]
    @c = params[:c]
    erb :team
  end

end
