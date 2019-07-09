class VideoGameCompaniesController < ApplicationController

  # GET: /video_game_companies
  get "/video_game_companies" do
    erb :"/video_game_companies/index.html"
  end

  # GET: /video_game_companies/new
  get "/video_game_companies/new" do
    erb :"/video_game_companies/new.html"
  end

  # POST: /video_game_companies
  post "/video_game_companies" do
    redirect "/video_game_companies"
  end

  # GET: /video_game_companies/5
  get "/video_game_companies/:id" do
    erb :"/video_game_companies/show.html"
  end

  # GET: /video_game_companies/5/edit
  get "/video_game_companies/:id/edit" do
    erb :"/video_game_companies/edit.html"
  end

  # PATCH: /video_game_companies/5
  patch "/video_game_companies/:id" do
    redirect "/video_game_companies/:id"
  end

  # DELETE: /video_game_companies/5/delete
  delete "/video_game_companies/:id/delete" do
    redirect "/video_game_companies"
  end
end
