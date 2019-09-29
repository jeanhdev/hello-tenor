class ProcedureDoc < ApplicationRecord
  belongs_to :procedure
  belongs_to :case_doc

  def accepted?
    @accepted
  end
end
