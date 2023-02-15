require 'rails_helper'

RSpec.describe User, type: :model do
  it 'Testing user without params' do
    user = User.create
    expect(user).to_not be_valid
  end
  it 'Testing user without name' do
    user = User.create(email: 'qq@qq.qq', encrypted_password: '123456')
    expect(user).to_not be_valid
  end
  it 'Testing user without email' do
    user = User.create(Name: 'Quentino', encrypted_password: '123456')
    expect(user).to_not be_valid
  end
  it 'Testing user without password' do
    user = User.create(email: 'qq@qq.qq', Name: 'Quentino')
    expect(user).to_not be_valid
  end
  it 'Testing user with params' do
    user = User.create(email: 'qq@qq.qq', Name: 'Quentino', password: '123456')
    expect(user).to be_valid
  end
end
