class AddBusinessesReferncesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :business, foreign_key: true
  end
end
