class ConfirmationSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :user
  belongs_to :organized_game


end
