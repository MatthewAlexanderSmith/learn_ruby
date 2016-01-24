def echo(arg)
  arg
end

def titleize(arg)
    # Will the following line of code work?
    # Can I incorporate conditional expressions after the &:?
    # The & operator followed by a symbol (:symbol) passing
    # @@contacts.map(&:class_method)
    # cap_first = arg.split.map(&:capitalize if ! words_to_ignore.include? x).join(' ')

    words_to_ignore = ["over", "the", "and"]
    new_string = arg.split(' ').map do |w|
      unless words_to_ignore.include? w
        w.capitalize
      else
        w
      end
    end
    new_string[0].capitalize!
    new_string = new_string.join(' ')
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

def first_word(arg)
  array = arg.split(' ')
  array[0]
end
