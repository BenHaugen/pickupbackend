class Confirmation < ApplicationRecord

  belongs_to :user
  belongs_to :organized_game

end
