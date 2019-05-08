class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :password

  has_many :organized_games
  has_many :confirmations

end
