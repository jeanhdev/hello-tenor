class AddColumnToClerks < ActiveRecord::Migration[5.2]
  def change
    add_column :clerks, :phone, :string
  end
end
