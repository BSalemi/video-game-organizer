class UsersController < ApplicationController
  

  get "/users/signup" do 
    if !logged_in?  
      erb :'/users/signup'
    else 
      redirect '/users/account'
    end 
  end 

  post "/users/signup" do 
    if params[:user][:username] == "" || params[:user][:email] == "" || params[:user][:password] == ""
      erb :'/users/signup_failure'
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
      erb :'/users/login_failure'
    end 
  end 

  get '/users/account' do 
    if !logged_in? 
      redirect '/users/login'
    else 
      erb :'/users/account'
    end 
  end 

  get '/users/logout' do 
    if logged_in?
      session.clear 
      redirect '/'
    else 
      redirect '/'
    end 
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
