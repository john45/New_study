# class for finding sample numbers and print out like matrix
class FindSimple
  def initialize(number)
    @number = number
  end

  def check
    result = []
    (2..@number).each do |element|
      devided = 0
      if element == 2
        result << element
      else
        (1..element).each { |el2| devided += 1 if (element % el2).zero? }
        result << element if devided == 2
      end
    end
    print_result(result)
  end

  private

  def print_result(result)
    new_array = result
    puts "Start printing array: #{result}"
    result.length.times do
      new_array.each { |el| print el.to_s.ljust(5) }
      to_last_element = new_array.shift
      new_array << to_last_element
      print "\n"
    end
    nil
  end
end
