class VideoGameCompaniesController < ApplicationController

  # GET: /video_game_companies
  get "/video_game_companies" do
    @companies = VideoGameCompany.all
    erb :"/video_game_companies/index"
  end

  
  # GET: /video_game_companies/5
  get "/video_game_companies/:id" do
    @company = VideoGameCompany.find(params[:id])
    erb :"/video_game_companies/show"
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
