class CreateLawyers < ActiveRecord::Migration[5.2]
  def change
    create_table :lawyers do |t|
      t.string :job
      t.string :speciality
      t.references :law_firm, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
