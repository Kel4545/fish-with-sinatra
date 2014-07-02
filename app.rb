require 'sinatra'

class FishApp < Sinatra::Base

def initialize
    super
    @fish = [{name: "Leopard Shark", description: "Totally badass. Looks amazing in a gold plated cocktail bar aquarium.", picture: "leopard_shark.jpg", wikilink: "http://en.wikipedia.org/wiki/Leopard_shark"},
      {name: "Puffer Fish", description: "Will get you stoned. Used in voodoo potions.", picture: "puffer_fish.jpg", wikilink: "http://en.wikipedia.org/wiki/Puffer_fish"},
      {name: "Snake Head", description: "Here from Asia to fuck you up.", picture: "Snakehead_fish.jpg", wikilink: "http://en.wikipedia.org/wiki/Snakehead_(fish)"}]

  end

  get '/' do
    erb :index, :locals => {:fish => @fish}
  end

  get "/:name" do
    @fish_name = params[:name]
    erb :profile, :locals => {:fish_name => @fish_name}
  end

  post "/" do
    params[:new_fish]
    @fish << {:name => params[:new_fish].to_s}
    redirect "/"
  end
end
