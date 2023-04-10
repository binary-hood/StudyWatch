class Reminder < ApplicationRecord
  # validating weight field and has to be greater than 0
  # a weight belongs to a user
  validates :reminder, presence: true
  belongs_to :user
  #creation of scope to be used in controller
  scope :user_reminder,->(user) { where(['user_id = ?', user.id]) }
end
