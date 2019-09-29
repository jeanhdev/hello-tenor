class Clerk < ApplicationRecord
  belongs_to :jurisdiction

validates :email, uniqueness: true
end
