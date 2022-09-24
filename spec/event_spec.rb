require 'rspec'
require './lib/event'

RSpec.describe 'Event' do
  it 'exists' do
    event = Event.new("event", [1,2,3,4])
    expect(event).to be_a(Event)
  end
end
