# app/lib/string_calculator.rb
class StringsCalculator
  def add(numbers)
    return 0 if numbers.empty?

    delimiter = /,|\n/
    if numbers.start_with?("//")
      custom, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(custom[2])
    end

    numbers.split(/#{delimiter}/).map(&:to_i).sum
  end
end