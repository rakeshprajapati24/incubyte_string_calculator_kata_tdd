class StringCalculator
  def self.addition(numbers)
    return 0 if numbers.nil? || numbers.strip.empty?
    numbers.scan(/-?\d+/).map(&:to_i).reduce(0,:+)
  end
end