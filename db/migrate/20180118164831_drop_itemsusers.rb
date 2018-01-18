class DropItemsusers < ActiveRecord::Migration[5.1]
  def change
    drop_table :item_users
  end
end
