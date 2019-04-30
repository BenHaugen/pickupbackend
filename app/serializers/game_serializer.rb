class GameSerializer < ActiveModel::Serializer
  attributes :id, :sport, :city, :address, :date, :price, :contact, :confirmed


  has_many :user_games
  has_many :users, through: :user_games

end
