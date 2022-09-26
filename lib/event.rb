require_relative 'standard_deviation'

class Event
  attr_reader :event_name, :ages

  def initialize(event_name, ages)
    @event_name = event_name
    @ages = ages
  end

  def name
    @event_name
  end

  def ages
    @ages
  end

  def max_age
    @ages.sort.last
  end

  def min_age
    @ages.sort.first
  end

  def average_age
    (@ages.sum.to_f / @ages.size).round(2)
  end

  def standard_deviation_age
    StandardDeviation.new(@ages).calc
  end
end
