require 'rails_helper'

RSpec.describe GroupsController, type: :request do
  describe 'GET categories path' do
    subject { User.new(Name: 'JOhn', email: 'qq@qq.qq', password: '123456') }

    before { subject.save }

    before(:each) do
      get groups_path
    end

    it 'should redirect to sign_up' do
      Group.create(Name: 'Fuel', AuthorId: subject.id, Icon: 'www.google.com/cat.jpg')
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
