def ftoc(temp)
  (temp - 32) * 5 / 9.0

  # if temp == 32
  #   0
  # elsif temp == 98.6
  #   37
  # elsif temp == 68
  #   20
  # else
  #   100
  # end
end

#°C  x  9/5 + 32 = °F

def ctof(temp)
  (temp * 9.0/5) + 32
end