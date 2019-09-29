class Lawyer < ApplicationRecord
  belongs_to :law_firm, optional: true
  belongs_to :user
  has_many :cases
  has_many :users, through: :cases
  has_many :notifications, as: :receiver

  LAWYER_SPECIALITY = ['Droit civil', 'Droit immobilier', 'Droit pénal', 'Droit social']
end
