require 'rails_helper'

RSpec.describe 'users tests', type: :system do
  describe 'users' do
    subject { User.new(Name: 'John', email: 'qq@qq.qq', password: '123456') }
    before { subject.save }
    before(:each) do
      @category = Group.create(Name: 'Fuel', AuthorId: subject.id, Icon: "www.google.com/cat.jpg")
      @dealing = Expense.create(Name: 'STOP', Amount: 20, AuthorId: subject.id)
      visit root_path
    end

    it 'shows app name' do
      expect(page).to have_content('CarExpenseTracker')
    end

    it 'shows login button' do
      expect(page).to have_content('Log In')
    end

    it 'shows signup button' do
      expect(page).to have_content('Sign Up')
    end

  end
end