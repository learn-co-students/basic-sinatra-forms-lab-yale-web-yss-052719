require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @team = params
    @abbv = {
      name: "Team Name",
      coach: "Coach",
      pg: "Point Guard",
      sg: "Shooting Guard",
      sf: "Small Forward",
      pf: "Power Forward",
      c: "Center"
    }
    erb :team
  end


end
