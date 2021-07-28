require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:department) { create(:department) }

  before(:each) do
    # When using references, don't foget to inlcude "department" when creating a new record with create
    @item = create(:item, department: department)
  end

  it 'should return a valid item' do
    expect(@item).to be_present
  end

  it 'should have a name' do
    # build: test creation of a model
    item2 = build(:item, name: nil)
    expect(item2).to_not be_valid
  end

  it 'should have a category ' do
    # build: test creation of a model
    item2 = build(:item, category: nil)
    expect(item2).to_not be_valid
  end

  it 'should have a description' do
    # build: test creation of a model
    item2 = build(:item, description: nil)
    expect(item2).to_not be_valid
  end

  it 'should have a make' do
    # build: test creation of a model
    item2 = build(:item, make: nil)
    expect(item2).to_not be_valid
  end
end
