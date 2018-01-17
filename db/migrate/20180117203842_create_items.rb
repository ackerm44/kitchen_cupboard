class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :inventory, :default => 0
      t.string :size
      t.integer :category_id
      t.integer :pantry_id
      t.timestamps
    end
  end
end
