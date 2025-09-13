class StringCalculator
  def self.addition(numbers)
    return 0 if numbers.nil? || numbers.strip.empty?
    numbers.to_i
  end
end