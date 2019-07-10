class CompaniesController < ApplicationController

  # GET: /video_game_companies
  get "/video_game_companies" do
    if logged_in? 
      @companies = Company.all
      erb :"/companies/index"
    else 
      redirect '/users/login'
    end 
  end
  
  # GET: /companies/5
  get "/companies/:id" do
    if logged_in? 
      @company = Company.find(params[:id])
      erb :"/companies/show"
    else 
      redirect '/users/login'
    end 
  end
  
end
