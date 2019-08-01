class Game < ApplicationRecord

	belongs_to :user
  has_many :pieces
  
  validates :title,
    presence: true,
    length: {maximum: 255 , minimum: 3},
    on: :create,
    allow_nil: false

end
