class Case < ApplicationRecord
  belongs_to :user
  belongs_to :lawyer
  has_many :events, dependent: :destroy
  has_many :case_docs, dependent: :destroy
  has_many :documents, through: :case_docs, dependent: :destroy
  has_many :procedures, dependent: :destroy
  has_one :invoice, dependent: :destroy
  has_many :notifications, dependent: :destroy

  validates :title, presence: true
  validates :case_number, presence: true, uniqueness: true
  validates :status, presence: true
  validates :user_id, presence: true

  before_validation :case_number_generator, on: :create

  attr_accessor :first_name, :last_name, :email

  CASE_STATUS = ['En attente', 'Actif', 'En cours', 'Terminé', 'Archivé']


  def set_status_to_in_progress
    self.status = "En cours"
    send_mail if self.contacted == false
    self.contacted = true if self.contacted == false
    self.save
  end

  def case_number_generator
    self.case_number = "#{Date.today.strftime('%Y%m%d')}-#{format('%04d', Case.all.length)}"
  end

  def send_mail
    mail = CaseMailer.with(case: self).create_confirmation
    mail.deliver_now
  end

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:title],
    associated_against: {
      user: [:last_name, :first_name, :email]
    },
    using: {
      tsearch: { prefix: true }
    }
end
