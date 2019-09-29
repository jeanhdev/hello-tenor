class AddLogoToBusinesses < ActiveRecord::Migration[5.2]
  def change
    add_column :businesses, :logo, :string
  end
end
