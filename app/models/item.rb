class Item < ApplicationRecord
  belongs_to :pantry
  belongs_to :category
  has_one :user, through: :pantry

  validates :name, presence: true
  accepts_nested_attributes_for :category

  def category_attributes=(category_attributes)
    self.category = Category.where(:name => category_attributes[:name]).first_or_create do |c|
      c.description = category_attributes[:description]
    end
  end

  def self.all_available
    self.all.find_all { |i| i.inventory > 0}
  end

  def item_in_stock?
    inventory > 0
  end
end
