class Item < ApplicationRecord
  belongs_to :pantry
  belongs_to :category
  has_one :user, through: :pantry

  validates :name, presence: true
  accepts_nested_attributes_for :category

  # def category_attributes=(category)
  #   self.category = Category.where(:name => category_attributes[:name])
  #
  # end
end
