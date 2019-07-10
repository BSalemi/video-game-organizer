class SystemsController < ApplicationController

  # GET: /systems
  get "/systems" do
    if logged_in?
      @systems = System.all 
      erb :"/systems/index"
    else 
      redirect '/users/login'
    end 
  end

  get "/systems/:id" do
    if logged_in?
      @system = System.find(params[:id])
      erb :"/systems/show"
    else 
      redirect '/users/login'
    end 
  end

 
end
