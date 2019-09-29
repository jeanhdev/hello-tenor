class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :lawyer, dependent: :destroy
  has_many :cases, dependent: :nullify
  has_many :documents, dependent: :destroy
  has_many :notifications, as: :receiver
  belongs_to :business, optional: true # => 'optional: true' allow new user to sign up
  validates :first_name, presence: true
  validates :last_name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def is_lawyer?
    !lawyer.nil?
  end

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:last_name, :first_name, :email],
    associated_against: {
      business: [:name]
    },
    using: {
      tsearch: { prefix: true }
    }
end
