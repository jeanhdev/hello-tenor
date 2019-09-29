class LawFirm < ApplicationRecord
  has_many :lawyers

  FIRM_SPECIALITY = ['Généraliste', 'Droit civil', 'Droit immobilier', 'Droit pénal', 'Droit social']

  mount_uploader :logo, LogoUploader
end
