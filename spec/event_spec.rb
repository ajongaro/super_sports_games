require 'rspec'
require './lib/event'

RSpec.describe 'Event' do

  let(:event) { Event.new("event", [1,2,3,4]) }
  it 'exists' do
    event = Event.new("event", [1,2,3,4])
    expect(event).to be_a(Event)
  end

  it 'returns max age' do
    expect(event.max_age).to eq(4)
  end

  it 'returns min age' do
    expect(event.min_age).to eq(1)
  end

  it 'returns an average' do
    expect(event.average_age).to eq(([1,2,3,4].sum.to_f/4).round(2))
  end
end
