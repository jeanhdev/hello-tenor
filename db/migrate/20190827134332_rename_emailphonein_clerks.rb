class RenameEmailphoneinClerks < ActiveRecord::Migration[5.2]
  def change
    rename_column :clerks, :emailphone, :email
  end
end
