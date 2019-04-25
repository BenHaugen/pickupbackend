class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :url
      t.string :main_sport
      t.string :availability

      t.timestamps
    end
  end
end
