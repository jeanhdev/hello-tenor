class CreateProcedureDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :procedure_docs do |t|
      t.boolean :accepted
      t.references :procedure, foreign_key: true
      t.references :case_doc, foreign_key: true

      t.timestamps
    end
  end
end
