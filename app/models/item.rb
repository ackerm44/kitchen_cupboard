class Item < ApplicationRecord
  belongs_to :pantry
  belongs_to :category
  has_one :user, through: :pantry

  def category_attributes=(category)
    self.category = Category.where(:name => category_attributes[:name])
    
  end
end
