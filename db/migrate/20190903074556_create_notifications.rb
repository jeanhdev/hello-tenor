class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.references :case, foreign_key: true
      t.references :receiver, polymorphic: true 
      t.string :content
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
