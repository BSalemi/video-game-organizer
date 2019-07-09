class CreateVideoGames < ActiveRecord::Migration
  def change
    create_table :video_games do |t|
      t.string :title 
      t.string :genre 
      t.string :content_rating 
      # t.integer :num_of_players
      t.integer :price 
      # t.string :description
      t.string :system
      t.integer :system_id, foreign_key: {to_table: :video_game_systems}
      t.integer :company_id, foreign_key: {to_table: :video_game_companies}
      

      t.timestamps null: false
    end
  end
end
