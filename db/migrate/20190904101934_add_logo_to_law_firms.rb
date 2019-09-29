class AddLogoToLawFirms < ActiveRecord::Migration[5.2]
  def change
    add_column :law_firms, :logo, :string
  end
end
