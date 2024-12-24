class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    return numbers.to_i if numbers.length == 1
    numbers.split(",").map(&:to_i).sum
    numbers.gsub("\n",",").split(",").map(&:to_i).sum

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers.split("\n", 2)[1]
    else
      numbers = numbers.gsub("\n",",")
    end
    array_of_numbers = numbers.split(/[^0-9\-]+/).map(&:to_i)
    negatives = array_of_numbers.select { |n|  n < 0 }
    raise "negative numbers not allowed #{negatives.join(",")}" if negatives.any? 
    array_of_numbers.sum
  end
  
end