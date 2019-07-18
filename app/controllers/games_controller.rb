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
    if @game.valid? 
       @game.save 
        redirect "/games/#{@game.id}"  
    else 
      erb :'/games/failure'
    end 
  end

  get "/games/rating/:rating" do 
    if logged_in? 
      @formatted = params[:rating].split("_").map{|element| element.capitalize}.join(" ")
      @games = Game.all.select{|game| game.content_rating == @formatted}
      erb :"/games/rating"
    else 
      redirect '/users/login'
    end
  end 

  get "/games/:id" do
    if logged_in? 
      @game = Game.find(params[:id])
      @user_games = current_user.games 
      erb :"/games/show"
    else 
      redirect '/users/login'
    end 
  end

end
