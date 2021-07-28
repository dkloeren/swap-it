require 'rails_helper'

RSpec.describe Request, type: :model do
  let(:department) { create(:department) }
  let(:user) { create(:user, department: department) }
  let(:item) { create(:item, department: department) }

  before(:each) do
    # When using references, don't foget to inlcude "department" when creating a new record with create
    @request = create(:request, item: item, user: user)
  end

  it 'should return a valid request' do
    expect(@request).to be_present
  end

  it 'should have valid user' do
    # build: test creation of a model
    expect(@request.user).to be_present
  end

  it 'should have valid item' do
    # build: test creation of a model
    expect(@request.item).to be_present
  end

  it 'should have valid status' do
    # build: test creation of a model
    request2 = build(:request, status: "invalid_status")
    expect(request2).to_not be_valid
  end
end
