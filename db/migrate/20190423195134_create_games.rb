class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :image
      t.string :city
      t.string :address
      t.date :date
      t.time :time
      t.string :price

      t.timestamps
    end
  end
end
