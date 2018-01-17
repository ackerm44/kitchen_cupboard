class Pantry < ApplicationRecord
  belongs_to :user
  has_many :items
  has_many :categories, through: :items
end
