class GamesController < ApplicationController
 

 
  get "/games" do
    if logged_in? 
      @games = Game.all
      erb :"/games/index"
    else 
      redirect '/users/login'
    end 
  end


  get "/games/new" do
    # if logged_in? 
      @systems = System.all
      @companies = Company.all 
      erb :"/games/new"
  end 
    # else 
    #   redirect '/users/login'
    # end 


  # POST: /games
  post "/games" do
    @game = Game.new(params[:game])
    if params[:games][:title] == "" || params[:games][:content_rating] == "" || params[:games][:system] == "" || params[:games][:company] == ""
      @game.save 
      redirect "/games/#{@game.id}/"
    else 
     redirect '/games/new'
    end 
  end

  # GET: /games/5
 



  get "/games/mature" do 
    @mature = Game.all.select {|game| game.content_rating == "Mature"}
    erb :"/games/mature"
  end 

  get "/games/teen" do
    @teen = Game.all.select {|game| game.content_rating == "Teen"}
    erb :"/games/teen"
  end 

  get "/games/everyone10&up" do 
    @e10 = Game.all.select {|game| game.content_rating == "Everyone 10 & Up"}
    erb :"/games/everyone10"
  end 

  get "/games/everyone" do 
    @everyone = Game.all.select {|game| game.content_rating == "Everyone"}
    erb :"/games/everyone"
  end 

  get "/games/:id" do
    if logged_in? 
      @game = Game.find(params[:id])
      erb :"/games/show"
    else 
      redirect '/users/login'
    end 
  end

end
