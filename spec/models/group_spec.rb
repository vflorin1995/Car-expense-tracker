require 'rails_helper'

RSpec.describe Group, type: :model do
  it "Testing group without params" do
    group = Group.create
    expect(group).to_not be_valid
  end
  it "Testing group without params" do
    user = User.create(email: "qq@qq.qq", Name: "Quentino", password: "123456")
    group = Group.create(AuthorId: user.id, Name: "Group1", Icon: "www.google.com/cats.jpg")
    expect(group).to be_valid
  end
  it "Testing group without author id" do
    group = Group.create(Name: "Group1", Icon: "www.google.com/cats.jpg")
    expect(group).to_not be_valid
  end
  it "Testing group without Name" do
    user = User.create(email: "qq@qq.qq", Name: "Quentino", password: "123456")
    group = Group.create(AuthorId: user.id, Icon: "www.google.com/cats.jpg")
    expect(group).to_not be_valid
  end
  it "Testing group without Icon" do
    user = User.create(email: "qq@qq.qq", Name: "Quentino", password: "123456")
    group = Group.create(AuthorId: user.id, Name: "Group1")
    expect(group).to_not be_valid
  end
end
