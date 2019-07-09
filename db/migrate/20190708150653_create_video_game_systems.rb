class CreateVideoGameSystems < ActiveRecord::Migration
  def change
    create_table :video_game_systems do |t|
      t.string :name 
      t.integer :company_id, foreign_key: {to_table: :video_game_companies}

      t.timestamps null: false
    end
  end
end
