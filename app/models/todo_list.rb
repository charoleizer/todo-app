class TodoList < ApplicationRecord
  has_many :todo_items
  validates :title, presence: true
end
