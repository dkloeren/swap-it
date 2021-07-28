require 'rails_helper'


RSpec.describe User, type: :model do
  let(:department) { create(:department) }

  before(:each) do
    # When using references, don't foget to inlcude "department" when creating a new record with create
    @user = create(:user, department: department)
  end

  it 'should return a valid user' do
    expect(@user).to be_present
  end

  it 'should validate for email' do
    # build: test creation of a model
    user2 = build(:user, email: 'invalid_email')
    expect(user2).to_not be_valid
  end

  it 'email should be unique' do
    create(:user, first_name: "DomDom1", last_name: "NikNik1", email: 'domdom@niknik.de', department: department)
    user3 = build(:user, first_name: "DomDom2", last_name: "NikNik2", email: 'domdom@niknik.de', department: department)
    expect(user3).to_not be_valid
  end

  it 'should validate for password' do
    # build: test creation of a model
    user2 = build(:user, password: 'inval')
    expect(user2).to_not be_valid
  end
end
