require 'rspec'
require_relative '../lib/event'

RSpec.describe 'Event' do

  let(:event) { Event.new("event", [1,2,3,4]) }

  it 'exists' do
    event = Event.new("event", [1,2,3,4])
    expect(event).to be_a(Event)
  end

  it 'has a name' do
    expect(event.name).to eq("event")
  end

  it 'has an array of ages' do
    expect(event.ages).to eq([1,2,3,4])
  end

  it 'returns max age' do
    expect(event.max_age).to eq(4)
  end

  it 'returns min age' do
    expect(event.min_age).to eq(1)
  end

  it 'returns an average' do
    expect(event.average_age).to eq(2.5)
  end

  it 'returns standard deviation of age' do
    expect(event.standard_deviation_age).to eq(1.12)
  end
end
