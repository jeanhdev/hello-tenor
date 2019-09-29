class CreateLawFirms < ActiveRecord::Migration[5.2]
  def change
    create_table :law_firms do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :phone
      t.string :firm_speciality

      t.timestamps
    end
  end
end
