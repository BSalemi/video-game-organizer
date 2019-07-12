class UsersController < ApplicationController
  
  patch '/users/account' do 
    @user = current_user
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.save 
    redirect '/users/account'
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

  get '/users/account/edit' do 
    @user = current_user 
    if logged_in?
      erb :'/users/edit'
    else 
      redirect '/users/login'
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

end
