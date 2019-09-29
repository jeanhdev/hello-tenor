class AddContactedToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :contacted, :boolean, null: false, default: false
  end
end
