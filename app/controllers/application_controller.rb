require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @hero1 = Hero.new(params["team"]["members"][0])
      @hero2 = Hero.new(params["team"]["members"][1])
      @hero3 = Hero.new(params["team"]["members"][2])
      @team = Team.new(params["team"])
      erb :team
    end


end
