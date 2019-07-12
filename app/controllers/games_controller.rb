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
    if logged_in? 
      @systems = System.all
      @companies = Company.all 
      erb :"/games/new"
    else 
      redirect '/users/login'
    end 
  end 



  post "/games" do
    @game = Game.new(params[:game])
    if params[:game][:title] == nil || params[:game][:content_rating] == nil || params[:game][:system_id] == nil|| params[:game][:company_id] == nil
        redirect '/games/new'
    else 
     @game.save 
     redirect "/games/#{@game.id}"
    end 
  end


  get "/games/mature" do 
    if logged_in?
     @mature = Game.all.select {|game| game.content_rating == "Mature"}
      erb :"/games/mature"
    else 
      redirect '/users/login'
    end 
  end 

  get "/games/teen" do
    if logged_in?
      @teen = Game.all.select {|game| game.content_rating == "Teen"}
      erb :"/games/teen"
    else 
    redirect '/users/login'
    end 
  end 

  get "/games/everyone10&up" do 
    if logged_in?
      @e10 = Game.all.select {|game| game.content_rating == "Everyone 10 & Up"}
      erb :"/games/everyone10"
    else 
      redirect '/users/login'
    end 
  end 

  get "/games/everyone" do 
    if logged_in?
      @everyone = Game.all.select {|game| game.content_rating == "Everyone"}
      erb :"/games/everyone"
    else 
      redirect '/users/login'
    end 
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
