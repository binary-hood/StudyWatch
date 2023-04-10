class Entry < ApplicationRecord
  # An entry belongs to a category and user
  # Validating form and checking if fields are greater than or equal to 0
  belongs_to :category
  belongs_to :user
  validates :task_name, :task_description, :due_date, :notes, :instructor_name, presence: true

  # Use of Scopes and creating one for entries and then using it in entries controller
  scope :user_entries,->(user) { where(['user_id = ?',user.id]) }
end
