ages = [24, 30, 18, 20, 41]

class StandardDeviation
  attr_reader :result;

  def initialize(array)
    sum_divided_by_size = (array.sum.to_f / array.size)
    array.map! { |age| (age - sum_divided_by_size)**2 }
    @result = Math.sqrt(array.sum / array.size)
  end
end

p StandardDeviation.new(ages).result
