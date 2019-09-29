class Opponent < ApplicationRecord
  belongs_to :procedure

  validates :email, uniqueness: true
end
