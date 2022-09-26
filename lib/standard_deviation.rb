
class StandardDeviation

  def initialize(ages)
    @ages = ages
  end

  def calc
    sum_divided_by_size = (@ages.sum.to_f / @ages.size)
    @ages.map! { |age| (age - sum_divided_by_size)**2 }
    return Math.sqrt(@ages.sum / @ages.size).round(2)
  end
end


# ages = [1, 2, 3, 4]
# p StandardDeviation.new(ages).calc
