class Invoice < ApplicationRecord
  belongs_to :case

  def subtotal
    sum = 0
    self.case.procedures.each do |procedure|
      sum += procedure.cost
    end
    return sum + self.case.fees
  end

  def vat_subtotal
    (subtotal * 0.2).round(2)
  end

  def total_amount
    (subtotal + vat_subtotal).round(2)
  end
end
