class Changer

  # def self.make_change(cash)
  #   quotient = cash / 5
  #   modulo = cash % 5
  #   if quotient == 5
  #     [25]
  #   elsif quotient == 2
  #     [10]
  #   elsif quotient == 4
  #     [10,10]
  #   elsif quotient == 10
  #     [25,25]
  #   elsif modulo == 2
  #     [5,1,1]
  #   elsif modulo == 3
  #     [25,25,10,5,1,1,1]
  #   end
  # end


#If x is any value less than 0 in (x).times
#Will ruby automatically return 0?
#Will it ever round up to 1 if it sees 0.9?
  def self.make_change(cash)
    change = []
    (cash / 25).times{change << 25}
    remainder = cash % 25
    (remainder / 10).times{change << 10}
    remainder = remainder % 10
    (remainder / 5).times{change << 5}
    remainder = remainder % 5
    (remainder / 1).times{change << 1}
    change
  end

end
