class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # Devise being added to user model
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # A User can have many entries and categories
  has_many :entries
  has_many :categories
  has_many :weights
end
