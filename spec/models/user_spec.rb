require 'rails_helper'

RSpec.describe User, type: :model do
  let(:department) { create(:department) }

  before(:each) do
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

end
