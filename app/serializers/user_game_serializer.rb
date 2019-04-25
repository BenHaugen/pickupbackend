class UserGameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :game_id, :organizer

  belongs_to :game
  belongs_to :user
end