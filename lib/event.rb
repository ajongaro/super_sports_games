require_relative 'standard_deviation'

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
    ages_to_calc = @ages
    mean = (ages_to_calc.sum.to_f / ages_to_calc.size)

    ages_to_calc.each do |x|
      x = (x - mean)**2
    end

    variance = (ages_to_calc.sum / ages_to_calc.size).round(2)
    return Math.sqrt(variance)
  end
end
