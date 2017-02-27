# class for finding sample numbers and print out like matrix
class FindSimple
  def initialize(number)
    @number = number
  end

  def check
    result = []
    return 'Число меньше или равно 1, введите болье 1' if @number <= 1
    (2..@number).each do |element|
      devided = 0
      if element == 2
        result << element
      else
        (1..element).each { |el2| devided += 1 if (element % el2).zero? }
        result << element if devided == 2
      end
    end
    result
  end
end
