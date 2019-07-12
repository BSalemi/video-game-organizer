class UsersGamesController < ApplicationController

post '/add_game/:id' do
    game = Game.find(params[:id]) 
    user_game = UserGame.create(user_id: current_user.id, game_id: game.id)
    redirect '/users/account'
    binding.pry
end 

end 