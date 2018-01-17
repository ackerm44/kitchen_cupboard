class Item < ApplicationRecord
  belongs_to :pantry
  belongs_to :category
  # has_many :item_users
  # has_many :users, through: :item_users
  has_one :user, through: :pantry

end
