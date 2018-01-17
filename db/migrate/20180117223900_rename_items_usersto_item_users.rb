class RenameItemsUserstoItemUsers < ActiveRecord::Migration[5.1]
  def change
    rename_table :items_users, :item_users 
  end
end
