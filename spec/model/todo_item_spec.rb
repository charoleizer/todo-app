require 'rails_helper'

RSpec.describe TodoItem, type: :model do
  todo_list = TodoList.new(title: 'Any Title')

  context 'TodoItem description validation' do
    it 'has description' do
      todo_item = TodoItem.new(description: 'Any description', todo_list: todo_list)
      expect(todo_item).to be_valid
    end

    it 'has no description' do
      todo_item = TodoItem.new(todo_list: todo_list)
      expect(todo_item).to_not be_valid
    end

    it "description can't be blank" do
      todo_item = TodoItem.new(description: nil, todo_list: todo_list)
      todo_item.valid?
      expect(todo_item.errors[:description]).to include("can't be blank")
    end
  end

  context 'TodoItem todo_list validation' do
    it 'todo_list must exist' do
      todo_item = TodoItem.new(description: 'Any description')
      todo_item.valid?
      expect(todo_item.errors[:todo_list]).to include('must exist')
    end
  end
end
