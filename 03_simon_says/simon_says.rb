def echo(arg)
  arg
end

def titleize(arg)
  # arg.capitalize
  arg.titleize

end

def start_of_word (one, two)
   one[0..(two - 1)]

    #Working Solution Using an array method
    # result = ""
    # array = one.split("")
    # # two.split("")
    #
    # if two == 1
    #   result = array.first
    # else
    #   result = array.first(two).join
    # end



end

def repeat(arg, num =2)
  #Initialize result
  result = ""
  #Append "arg " to result
  #Use the times iterator to do the block num times
  num.times{result += arg + " "}
  #[0..-2] treats result like an array returning up to the second last character
  result[0..-2]
end

def shout(arg)
  arg.upcase
end

def first_word

end

