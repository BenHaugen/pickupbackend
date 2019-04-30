class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :sport
      t.string :city
      t.string :address
      t.string :date
      t.string :price
      t.string :contact
      t.integer :confirmed

      t.timestamps
    end
  end
end
