class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :status
      t.decimal :vat
      t.references :case, foreign_key: true

      t.timestamps
    end
  end
end
