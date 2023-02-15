RSpec.describe ExpensesController, type: :request do
  describe 'GET transactions path' do
    subject { User.new(Name: 'Tom', email: 'tom@mail.com', password: 'password') }

    before { subject.save }

    before(:each) do
      get group_expenses_path(subject.id)
    end

    it 'should redirect to sign_up' do
      Group.create(Name: 'Fuel', AuthorId: subject.id, Icon: 'www.google.com/cat.jpg')
      Expense.create(AuthorId: subject.id, Name: 'Fuel', Amount: 20)

      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
