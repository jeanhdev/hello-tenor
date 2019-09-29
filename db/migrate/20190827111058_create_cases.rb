class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :title
      t.string :case_number
      t.string :practice_area
      t.text :description
      t.date :start_date
      t.integer :duration
      t.string :status
      t.float :fees
      t.references :user, foreign_key: true
      t.references :lawyer, foreign_key: true

      t.timestamps
    end
  end
end
