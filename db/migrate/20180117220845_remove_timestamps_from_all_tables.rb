class RemoveTimestampsFromAllTables < ActiveRecord::Migration[5.1]
  def change
    remove_column :categories, :created_at, :datetime
    remove_column :categories, :updated_at, :datetime

    remove_column :items, :created_at, :datetime
    remove_column :items, :updated_at, :datetime

    remove_column :items_users, :created_at, :datetime
    remove_column :items_users, :updated_at, :datetime

    remove_column :pantries, :created_at, :datetime
    remove_column :pantries, :updated_at, :datetime
  end
end
