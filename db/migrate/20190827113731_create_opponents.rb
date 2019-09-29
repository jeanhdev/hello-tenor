class CreateOpponents < ActiveRecord::Migration[5.2]
  def change
    create_table :opponents do |t|
      t.string :name
      t.string :email
      t.references :procedure, foreign_key: true

      t.timestamps
    end
  end
end
