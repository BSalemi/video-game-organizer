class CreateUserVideoGames < ActiveRecord::Migration
  def change
    create_table :user_video_games do |t|
      t.integer :user_id 
      t.integer :game_id, foreign_key: {to_table: :video_games}
      
      t.timestamps null: false
    end 
  end 
end 
