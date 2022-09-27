class Event
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
    @ages.sort.last.to_i
  end

  def min_age
    @ages.sort.first.to_i
  end

  def average_age
    (@ages.sum.to_f / @ages.size).round(2)
  end

  def standard_deviation_age
    mean = @ages.sum(0.0) / @ages.size
    sum = @ages.sum(0.0) { |element| (element - mean) ** 2 }
    variance = sum / (@ages.size)
    return Math.sqrt(variance).round(2)
  end
end
