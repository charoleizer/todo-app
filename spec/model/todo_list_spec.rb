require 'rails_helper'

RSpec.describe TodoList, type: :model do
  context 'TodoList title validation' do
    it 'has title' do
      todolist = TodoList.new(title: 'Any Title')
      expect(todolist).to be_valid
    end

    it "hasn't title" do
      todolist = TodoList.new
      expect(todolist).to_not be_valid
    end
  end
end
