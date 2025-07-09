class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    nums = numbers.split(",")
    return nums.map(&:to_i).sum
  end
end
