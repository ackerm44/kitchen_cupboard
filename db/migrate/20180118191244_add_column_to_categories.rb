class AddColumnToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :description, :string
  end
end
