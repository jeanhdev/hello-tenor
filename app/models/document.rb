class Document < ApplicationRecord
  belongs_to :user
  has_many :case_docs, dependent: :destroy
  has_many :cases, through: :case_docs
  has_many :lawyers, through: :cases


  DOC_CATEGORY = ['Conclusions', 'Conclusions Adverses', 'Correspondance', 'Document personnel', 'Document de société', 'Facture', 'Décision de justice']
  validates :category, inclusion: { in: DOC_CATEGORY }, presence: true
  validates :name, presence: true
  validates :storage, presence: true

  scope :pieces, -> { where.not(category: ['Correspondance', 'Conclusions', 'Conclusions Adverses']) }
  scope :letters, -> { where(category: 'Correspondance') }
  scope :conclusions, -> { where(category: 'Conclusions') }
  scope :conclusions_opponent, -> { where(category: 'Conclusions Adverses') }

  mount_uploader :storage, StorageUploader
end
