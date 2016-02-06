class Temperature
  def initialize(temp)
    if temp[:f] == nil
      @f = (temp[:c] * 1.8) + 32 #convert degC to defF
      @c = temp[:c]
    else
      @f = temp[:f]
      @c = (temp[:f]-32) * (5.0/9) #convert defF to degC
    end
  end

  def to_fahrenheit
     @c * 1.8 + 32 #convert degC to defF
  end

  def to_celsius
    (@f-32) * 5.0/9
  end

  def self.in_celsius(temp)
    Celsius.new(temp)
  end

  def self.in_fahrenheit(temp)
      Fahrenheit.new(temp)
  end

end

class Celsius < Temperature
  def initialize(temp)
    @c = temp
    @f = temp * 1.8 + 32
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @c = (temp-32) * (5.0/9.0)
    @f = temp
  end
end
