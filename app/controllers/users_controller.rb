class UsersController < ApplicationController
  
  configure do 
    enable :sessions
    set :session_secret, 'A3hrk58jQ6ytX7nZ3Twv'
  end 

  get "/users/signup" do 
    if !logged_in?  
      erb :'/users/signup'
    else 
      redirect '/users/account'
    end 
  end 

  post "/users/signup" do 
    if params[:user][:username] == "" || params[:user][:email] == "" || params[:user][:password] == ""
      redirect '/users/signup'
      
    else 
      @user = User.create(params[:user])
      session[:user_id] = @user.id 
      redirect '/users/account'
    end 
  end 

  get '/users/login' do 
    if !logged_in? 
      erb :'/users/login'
    else 
      redirect '/users/account'
    end 
  end 


  post '/users/login' do 
    user = User.find_by(username: params[:user][:username])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect '/users/account'
    else 
      redirect '/users/signup'
    end 
  end 

  get '/users/account' do 
    binding.pry
    if !logged_in? 
      redirect '/users/login'
    else 
      erb :'/users/account'
    end 
  end 

  get '/users/logout' do 
    if !logged_in?
      session.clear 
      redirect '/users/login'
    else 
      redirect '/'
    end 
  end 













  # GET: /users/5
  get "/users/:id" do
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end
end
