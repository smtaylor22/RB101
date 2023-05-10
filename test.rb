# sentence = 'To be or not to be'

# def string_lengths(sentence)
#   strings = sentence.split
#   lengths = []
#   counter = 1

#   until counter > strings.size do
#     word_length = strings[counter - 1].length
#     lengths.push(word_length)
#     counter += 1
#   end

#   lengths
# end

# p string_lengths(sentence)
def fix(value)
  value << 'xyz'
  value = value.upcase
  value.concat('!')
end
s = 'hello'
t = fix(s)

puts s
puts s.object_id

puts t
puts t.object_id