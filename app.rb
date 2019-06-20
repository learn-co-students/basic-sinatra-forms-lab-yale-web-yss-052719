require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do

    erb :newteam
  end

  post '/team' do
    # responds to POST request at /team
    # form send a POST request to this route
    # pass the submitted data to team.erb 
    @name = params[:name]
    @coach = params[:coach]
    @pg = params[:pg]
    @sg = params[:sg]
    @sf = params[:sf]
    @pf = params[:pf]
    @c = params[:c]

    erb :team
    # pass the submitted data to team.erb
  end


end
