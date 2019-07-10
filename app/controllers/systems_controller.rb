class SystemsController < ApplicationController

  # GET: /systems
  get "/systems" do
    @systems = System.all 
    erb :"/systems/index"
  end

  # GET: /systems/new
  get "/systems/new" do
    erb :"/systems/new.html"
  end

  # POST: /systems
  post "/systems" do
    redirect "/systems"
  end

  # GET: /systems/5
  get "/systems/:id" do
    @system = System.find(params[:id])
    erb :"/systems/show"
  end

 
end
