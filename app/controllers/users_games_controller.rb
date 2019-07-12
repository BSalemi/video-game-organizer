class UsersGamesController < ApplicationController

get '/add_game/:id' do
    game = Game.find(params[:id]) 
    user_game = UserGame.create(user_id: current_user.id, game_id: game.id)
    redirect '/users/account'
end 

end 