class AddDefaultValueToCases < ActiveRecord::Migration[5.2]
  def change
    change_column :cases, :status, :string, default: 'En attente'
  end
end
