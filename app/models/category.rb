class Category < ApplicationRecord
  # A category has many entries and the entries that are depending on the category will be destroyed if they are attached to same Entry
  # validations for the title
  # a category belongs to a user
  has_many :entries, dependent: :destroy
  validates :title, presence: true
  belongs_to :user

  # created a scope for categories and used in controller
  scope :user_categories,->(user) { where(['user_id = ?', user.id]) }
end
