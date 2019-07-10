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
  
end
