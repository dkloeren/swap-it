require 'rails_helper'

RSpec.describe Department, type: :model do
  before(:each) do
    @department = create(:department)
  end

  it 'creates a valid department' do
    expect(@department).to be_present
  end

  it 'has a unique department name' do
    dep2 = build(:department, name: 'HR')
    expect(dep2).to_not be_valid
  end

  it 'should have a location' do
    # in order to test missing parameters overwrite factory parameter
    dep2 = build(:department, location: nil)
    expect(dep2).to_not be_valid
  end
end
