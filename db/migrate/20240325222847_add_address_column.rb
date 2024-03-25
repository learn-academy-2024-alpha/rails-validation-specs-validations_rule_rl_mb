class AddAddressColumn < ActiveRecord::Migration[7.1]
  def change
    add_column :accounts, :address, :string 
  end
end
