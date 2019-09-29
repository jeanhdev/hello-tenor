class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.text :description
      t.references :case, foreign_key: true

      t.timestamps
    end
  end
end
