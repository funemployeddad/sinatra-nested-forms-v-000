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

    post '/pirates' do
      pirate = Pirate.new(name: params[:pirate][:name], height: params[:pirate][:height], weight: params[:pirate][:weight])

      params[:pirate][:ships].each do |ship_data|
        ship = Ship.create(ship_data)
        ship.pirate = pirate
      end

      redirect to "/pirates/#{pirate.id}"
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
