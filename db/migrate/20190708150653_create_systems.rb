class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name 
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
