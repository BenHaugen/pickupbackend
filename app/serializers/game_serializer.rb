class GameSerializer < ActiveModel::Serializer
  attributes :id, :image, :city, :address, :date, :time, :price


  has_many :user_games
  has_many :users, through: :user_games 

end
