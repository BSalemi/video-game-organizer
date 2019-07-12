class UsersController < ApplicationController
 
  

  get "/users/signup" do 
    if !logged_in?  
      erb :'/users/signup'
    else 
      redirect '/users/account'
    end 
  end 

  post "/users/signup" do 
    @user = User.new(params[:user])
    if @user.valid? 
      @user.save 
      session[:user_id] = @user.id 
      redirect '/users/account'
   else 
    erb :'/users/signup_failure'
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

  patch '/users/account' do 
    @user = current_user
    @user.username = params[:user][:username]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    if @user.valid?
        @user.save 
      redirect '/users/account'
    else 
      erb :'/users/update_failure'
    end
  end 

  get '/users/account/delete' do 
    if logged_in?
      erb :'/users/delete'
    else 
      redirect '/users/login'
    end 
  end 

  delete '/users/account/delete' do 
     @user = current_user
     @user.delete 
     redirect '/users/signup'
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
