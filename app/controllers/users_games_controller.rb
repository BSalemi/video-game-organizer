class UsersGamesController < ApplicationController

get '/add_game' do 
    @user_game = UserGame.create()
end 

end 