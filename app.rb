require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/pirates' do
      @pirates = Pirate.all

      erb :'pirates/index'
    end

    get '/pirates/new' do
      erb :'pirates/new'
    end
    
    get '/pirates/:id' do
      @pirate = Pirate.find(params[:id])

      erb :'pirates/show'
    end




    # get '/' do
    #   erb :root
    # end
    #
    # get '/new' do
    #   erb :'/pirates/new'
    # end
    #
    # post '/pirates' do
    #   @pirate = Pirate.new(params[:pirate])
    #
    #   params[:pirate][:ships].each do |details|
    #     Ship.new(details)
    #   end
    #
    #   @ships = Ship.all
    #
    #   erb :'/pirates/show'
    # end

  end
end
