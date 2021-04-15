require 'rspec'
require './lib/ride'
require './lib/attendee'


RSpec.describe Ride do
  it 'exists' do
    attendee = Attendee.new('Bob', 20)

    expect(attendee).to be_instance_of(Attendee)
  end

  it 'has attributes' do
    attendee = Attendee.new('Bob', 20)

    expect(attendee.name).to eq('Bob')
    expect(attendee.spending_money).to eq(20)
  end
end
