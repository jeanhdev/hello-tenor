class CreateCaseDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :case_docs do |t|
      t.boolean :accepted
      t.references :document, foreign_key: true
      t.references :case, foreign_key: true

      t.timestamps
    end
  end
end
