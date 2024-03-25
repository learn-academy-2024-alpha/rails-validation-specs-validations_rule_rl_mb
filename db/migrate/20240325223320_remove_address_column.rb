class RemoveAddressColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :accounts, :address
  end
end
