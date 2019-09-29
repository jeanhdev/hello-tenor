class CreateClerks < ActiveRecord::Migration[5.2]
  def change
    create_table :clerks do |t|
      t.string :firs_name
      t.string :last_name
      t.string :emailphone
      t.references :jurisdiction, foreign_key: true

      t.timestamps
    end
  end
end
