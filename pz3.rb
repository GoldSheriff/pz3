class SimpleCalculator
  def initialize(num1, num2) # конструктор класса
    @num1 = num1 # переменная объекта (переменная экземпляра класса)
    @num2 = num2
  end

  def add()
    @num1 + @num2
  end

  def subtract()
    @num1 - @num2
  end

  def multiply()
    @num1 * @num2
  end

  def divide()
    if @num2 == 0
      return "Cannot divide by zero."
    else
      @num1 / @num2
    end
  end
end

class EngineeringCalculator < SimpleCalculator
  def power(base, exponent)
    base ** exponent
  end

  def percentage(num)
    num / 100
  end
end


# Пример использования:

# simple_calc = SimpleCalculator.new(10, 2)
# puts simple_calc.add # Output: 12
# puts simple_calc.subtract # Output: 8
# puts simple_calc.multiply # Output: 20
# puts simple_calc.divide # Output: 5

# eng_calc = EngineeringCalculator.new(5, 2)
# puts eng_calc.power(2, 3) # Output: 8
# puts eng_calc.percentage(100) # Output: 1
# puts eng_calc.add # Output: 7 (наследует метод из SimpleCalculator)