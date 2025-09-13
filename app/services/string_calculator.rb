class StringCalculator
  def self.addition(numbers)
    return 0 if numbers.nil? || numbers.strip.empty?
    numbers.split(',').map(&:to_i).reduce(0, :+)
  end
end