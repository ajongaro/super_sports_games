
class StandardDeviation

  def initialize(ages)
    @all_ages = ages
  end

  def calc
    sum_divided_by_size = (@all_ages.sum.to_f / @all_ages.size)
    @all_ages.map! { |age| (age - sum_divided_by_size)**2 }
    return Math.sqrt(@all_ages.sum / @all_ages.size).round(2)
  end
end


# ages = [1, 2, 3, 4]
# p StandardDeviation.new(ages).calc
