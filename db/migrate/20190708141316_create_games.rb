class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title 
      t.string :content_rating 
      t.integer :system_id
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
