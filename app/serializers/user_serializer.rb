class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :url, :main_sport, :availability

  has_many :user_games
  has_many :games, through: :user_games

end
