class Procedure < ApplicationRecord
  belongs_to :case
  belongs_to :jurisdiction
  has_many :procedure_docs, dependent: :destroy
  has_many :opponents

  PROCEDURE_LEGAL_ACTION = ['Procédure amiable', 'Procédure unilatérale', 'Procédure en contentieux']

  PROCEDURE_STATUS = ['En attente', 'En cours', 'Terminée', 'Archivée', 'Perdue', 'Gagnée']
end
