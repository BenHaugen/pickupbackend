class OrganizedGameSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :sport, :city, :address, :date, :price, :contact, :confirmed

  belongs_to :user
  has_many :confirmations

end
