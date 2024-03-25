class ChangeUsernameColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :accounts, :Username, :username
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
