# app/lib/string_calculator.rb
class StringsCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/ # By default, valid delimiters are comma , and newline \n, store this in a regular expression.
    
    #Checks if the input starts with //, which means a custom delimiter is being used.
    if numbers.start_with?("//") 
      custom, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(custom[2])
    end

    nums = numbers.split(/#{delimiter}/).map(&:to_i)
    negatives = nums.select { |n| n < 0 }
    raise "negative numbers not allowed #{negatives.join(',')}" if negatives.any?

    nums.sum
  end
end