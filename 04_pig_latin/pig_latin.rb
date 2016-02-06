# def translate(arg)
#   arg.split(' ').map do |x|
#     if x.start_with?('a','e','i', 'o','u')
#       x << 'ay'
#     else
#       consonant = arg[0..2].split.('')
#
#       consonant = x[0]
#       x[0] = ''
#       x << "#{consonant}ay"
#     end
#   end
# end
require 'pry'

def translate (arg)
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
  arg_array = arg.split(" ")

  arg_array = arg_array.map! do |arg|
    if vowels.include?(arg[0])
      arg + 'ay'

    elsif consonants.include?(arg[0]) && consonants.include?(arg[1]) && consonants.include?(arg[2])
      arg[3..-1] + arg[0..2] + 'ay'

    elsif arg[0..2] == "squ"
      arg[3..-1] + "squay"

    elsif consonants.include?(arg[0]) && consonants.include?(arg[1])
      arg[2..-1] + arg[0..1] + 'ay'

    elsif arg[0..1] == "qu"
      arg[2..-1] + "quay"

    elsif consonants.include?(arg[0])
      arg[1..-1] + arg[0] + 'ay'
    end
  end
  arg_array.join(" ")
end

#Alternate approach
# def translate
#   rotate
#   find index of first vowel in the word you want to translate, pass this to rotate
# end



end
