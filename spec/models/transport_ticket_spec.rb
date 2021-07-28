require 'rails_helper'

RSpec.describe TransportTicket, type: :model do

  let(:department) { create(:department) }
  let(:user) { create(:user, department: department) }
  let(:item) { create(:item, department: department) }
  let(:request) { create(:request, user: user, item: item) }

  before(:each) do
    # When using references, don't foget to inlcude "department" when creating a new record with create
    @ticket = create(:transport_ticket, department: department, request: request)
  end

  it 'should return a valid transport_ticket' do
    expect(@ticket).to be_present
  end

  it 'should have valid request' do
    # build: test creation of a model
    expect(@ticket.request).to be_present
  end

  it 'should have valid department' do
    # build: test creation of a model
    expect(@ticket.department).to be_present
  end
end
