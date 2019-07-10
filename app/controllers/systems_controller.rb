class SystemsController < ApplicationController

  # GET: /systems
  get "/systems" do
    erb :"/systems/index.html"
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
    erb :"/systems/show.html"
  end

  # GET: /systems/5/edit
  get "/systems/:id/edit" do
    erb :"/systems/edit.html"
  end

  # PATCH: /systems/5
  patch "/systems/:id" do
    redirect "/systems/:id"
  end

  # DELETE: /systems/5/delete
  delete "/systems/:id/delete" do
    redirect "/systems"
  end
end
