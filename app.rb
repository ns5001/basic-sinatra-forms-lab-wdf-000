require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/newteam' do
    @team_name = params["name"]
    @coach = params["coach"]
    @point_gaurd = params["pg"]
    @shooting_gaurd = params["sg"]
    @small_forward = params["sf"]
    @power_forward = params["pf"]
    @center = params["c"]
    @submit = params["submit"]
    erb :team
  end

end
