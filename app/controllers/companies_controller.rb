class CompaniesController < ApplicationController

  get "/companies" do
    if logged_in? 
      @companies = Company.all
      erb :"/companies/index"
    else 
      redirect '/users/login'
    end 
  end
  
  get "/companies/:id" do
    if logged_in? 
      @games = Game.all 
      @company = Company.find(params[:id])
      erb :"/companies/show"
    else 
      redirect '/users/login'
    end 
  end
  
end
