class AddNameToBusinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :name, :string
  end
end
