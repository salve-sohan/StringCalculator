class StringCalculator
  def self.add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      nums = numbers.split("\n", 2)
      custom_delim = nums[0][2..-1]
      numbers = nums[1]
      delimiter = Regexp.escape(custom_delim)
    end

    nums = numbers.split(/#{delimiter}/)
    nums = nums.map(&:to_i)

    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    nums.sum
  end
end
