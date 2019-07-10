class CompaniesController < ApplicationController

  # GET: /video_game_companies
  get "/video_game_companies" do
    @companies = Company.all
    erb :"/companies/index"
  end

  
  # GET: /companies/5
  get "/companies/:id" do
    @company = Company.find(params[:id])
    erb :"/companies/show"
  end

  # GET: /companies/5/edit
  get "/companies/:id/edit" do
    erb :"/companies/edit.html"
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
