class StringCalculator
  def self.addition(numbers)
    return 0 if numbers.nil? || numbers.strip.empty?
    filter_numbers = numbers.scan(/-?\d+/).map(&:to_i)
    
    negatives = filter_numbers.select { |n| n < 0 }
    raise ArgumentError, "negative numbers not allowed #{negatives.join(', ')}" if negatives.any?
    
    filter_numbers.reduce(0,:+)
  end
end
