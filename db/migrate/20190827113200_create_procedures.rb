class CreateProcedures < ActiveRecord::Migration[5.2]
  def change
    create_table :procedures do |t|
      t.string :name
      t.text :grievance
      t.string :legal_action
      t.timestamp :step
      t.integer :deadline
      t.date :start_date
      t.date :end_date
      t.string :status
      t.integer :number_of_documents
      t.float :cost
      t.references :case, foreign_key: true
      t.references :jurisdiction, foreign_key: true

      t.timestamps
    end
  end
end
