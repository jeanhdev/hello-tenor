class Business < ApplicationRecord
  has_many :users

  BUSINESS_LEGAL_FORM = ['SAS', 'SARL', 'SA', 'EI']

  mount_uploader :logo, LogoUploader
end
