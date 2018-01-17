class User < ApplicationRecord
  has_one :pantry
  #has_many :item_users
  #has_many :items, through: :item_users
  has_many :items, through: :pantry

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
