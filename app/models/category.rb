class Category < ApplicationRecord
  has_many :items

  #validates :name, presence: true
  validates :name, uniqueness: true


  #Custom validation for the presence of only 1 category (either selected or written in)
end
