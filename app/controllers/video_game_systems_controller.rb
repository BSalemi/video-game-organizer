class VideoGameSystemsController < ApplicationController

  # GET: /video_game_systems
  get "/video_game_systems" do
    erb :"/video_game_systems/index.html"
  end

  # GET: /video_game_systems/new
  get "/video_game_systems/new" do
    erb :"/video_game_systems/new.html"
  end

  # POST: /video_game_systems
  post "/video_game_systems" do
    redirect "/video_game_systems"
  end

  # GET: /video_game_systems/5
  get "/video_game_systems/:id" do
    erb :"/video_game_systems/show.html"
  end

  # GET: /video_game_systems/5/edit
  get "/video_game_systems/:id/edit" do
    erb :"/video_game_systems/edit.html"
  end

  # PATCH: /video_game_systems/5
  patch "/video_game_systems/:id" do
    redirect "/video_game_systems/:id"
  end

  # DELETE: /video_game_systems/5/delete
  delete "/video_game_systems/:id/delete" do
    redirect "/video_game_systems"
  end
end
