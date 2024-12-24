class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    delimiter, numbers = extract_delimiter(numbers)
    sum(numbers, delimiter)
  end
  private
  def extract_delimiter(numbers)
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2)[1]
    else
      delimiter = /[^0-9\-]+/
      numbers = numbers.gsub("\n",",")
    end
    [delimiter, numbers]
  end

  def sum(numbers, delimiter)
    array_of_numbers = numbers.split(delimiter).map(&:to_i)
    negatives = array_of_numbers.select { |n|  n < 0 }
    raise "negative numbers not allowed #{negatives.join(",")}" if negatives.any? 
    array_of_numbers.sum
  end
end