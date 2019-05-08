class User < ApplicationRecord
  has_many :confirmations
  has_many :organized_games

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :password, presence: true

end
