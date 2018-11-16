class RomanNumerals

  NUMBERS = { 1000 => 'M', 900 => 'CM',  500 => 'D',
     400 => 'CD', 100 => 'C', 90 => 'XC',
     50 => 'L', 40 => 'XL', 10 => 'X', 9=> 'IX',
      5 => 'V', 4 => 'IV', 1 => 'I' }

  def convert(num)
    output = ""
    while num != 0
      case num
      when 1..3
        output << NUMBERS[1]
        num -= 1
      when 4
        output << NUMBERS[4]
        num -= 4
      when 5..8
        output << NUMBERS[5]
        num -= 5
      when 9
        output << NUMBERS[9]
        num -= 9
      when 10..39
        output << NUMBERS[10]
        num -= 10
      when 40..49
        output << NUMBERS[40]
        num -= 40
      when 50..89
        output << NUMBERS[50]
        num -= 50
      when 90..99
        output << NUMBERS[90]
        num -= 90
      when 100..399
        output << NUMBERS[100]
        num -= 100
      when 400..499
        output << NUMBERS[400]
        num -= 4
      when 500..899
        output << NUMBERS[500]
        num -= 500
      when 900..999
        output << NUMBERS[900]
        num -= 900
      else
        output << NUMBERS[1000]
        num -=1000
      end
    end
    output
  end


end
