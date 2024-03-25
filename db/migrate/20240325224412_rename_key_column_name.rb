class RenameKeyColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :addresses, :username_id, :account_id
  end
end
