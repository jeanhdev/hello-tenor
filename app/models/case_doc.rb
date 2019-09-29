class CaseDoc < ApplicationRecord
  belongs_to :document, optional: true
  belongs_to :case
  has_many :procedure_docs

  def accepted?
    @accepted
  end
end
