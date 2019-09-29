class Notification < ApplicationRecord
  belongs_to :case
  belongs_to :receiver, polymorphic: true
end
