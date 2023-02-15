require 'rails_helper'

RSpec.describe Expense, type: :model do
   it "Testing expense without params" do
      expense = Expense.create
      expect(expense).to_not be_valid
   end
   it "Testing correct expense" do
      user = User.create(email: "qq@qq.qq", Name: "Quentino", password: "123456")
      expense = Expense.create(AuthorId: user.id , Name: "Fuel", Amount: 20)
      expect(expense).to be_valid
   end
   it "Testing expense without authorId" do
      expense = Expense.create(Name: "Fuel", Amount: 20)
      expect(expense).to_not be_valid
   end
   it "Testing expense without name" do
      user = User.create(email: "qq@qq.qq", Name: "Quentino", password: "123456")
      expense = Expense.create(AuthorId: user.id, Amount: 20)
      expect(expense).to_not be_valid
   end
   it "Testing expense without amount" do
      user = User.create(email: "qq@qq.qq", Name: "Quentino", password: "123456")
      expense = Expense.create(AuthorId: user.id, Name: "Fuel")
      expect(expense).to_not be_valid
   end
   it "Testing expense with non numerical amount" do
      user = User.create(email: "qq@qq.qq", Name: "Quentino", password: "123456")
      expense = Expense.create(AuthorId: user.id, Name: "Fuel", Amount: "two")
      expect(expense).to_not be_valid
   end
   it "Testing expense with negative amount" do
    user = User.create(email: "qq@qq.qq", Name: "Quentino", password: "123456")
    expense = Expense.create(AuthorId: user.id, Name: "Fuel", Amount: -20)
    expect(expense).to_not be_valid
   end
end
