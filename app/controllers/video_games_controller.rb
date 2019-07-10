class VideoGamesController < ApplicationController

  # GET: /video_games
  get "/video_games" do
    @games = VideoGame.all
    erb :"/video_games/index"
  end

  # GET: /video_games/new
  get "/video_games/new" do
    erb :"/video_games/new.html"
  end

  # POST: /video_games
  post "/video_games" do
    redirect "/video_games"
  end

  # GET: /video_games/5
  get "/video_games/:id" do
    @game = VideoGame.find(params[:id])
    erb :"/video_games/show"
  end

  # GET: /video_games/5/edit
  get "/video_games/:id/edit" do
    erb :"/video_games/edit.html"
  end

  # PATCH: /video_games/5
  patch "/video_games/:id" do
    redirect "/video_games/:id"
  end

  # DELETE: /video_games/5/delete
  delete "/video_games/:id/delete" do
    redirect "/video_games"
  end
end
