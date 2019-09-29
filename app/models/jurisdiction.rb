class Jurisdiction < ApplicationRecord
  has_many :procedures
  has_many :clerks

  validates :name, presence: true

  COURT_NAME = [
    'TGI',
    'TI',
    'Tribunal de Police',
    'Tribunal Correctionnel',
    "Cour d'appel",
    "Cour d'assises",
    "Conseil des prud'hommes",
    'Tribunal de commerce',
    'TASS'
  ]
end
