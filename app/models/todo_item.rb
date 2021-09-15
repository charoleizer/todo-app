class TodoItem < ApplicationRecord
  belongs_to :todo_list
  validates :description, presence: true

  scope :completed, lambda {
    where(completed: true)
  }
end
