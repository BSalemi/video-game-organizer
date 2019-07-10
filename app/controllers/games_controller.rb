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
  get "/games/:id" do
    if logged_in? 
      @game = Game.find(params[:id])
      erb :"/games/show"
    else 
      redirect '/users/login'
    end 
  end

  # GET: /games/5/edit
  get "/games/:id/edit" do
    erb :"/games/edit.html"
  end

  # PATCH: /games/5
  patch "/games/:id" do
    redirect "/games/:id"
  end

  # DELETE: /games/5/delete
  delete "/games/:id/delete" do
    redirect "/games"
  end
end
