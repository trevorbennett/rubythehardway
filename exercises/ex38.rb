# array manipulation

sentence = "this is a sentence that we will do stuff to"

words = ["we","will","add","more","to","it"]

sentence  = sentence.split(' ')

while sentence.length != 15
  next_word = words.pop
  puts "adding #{next_word}"
  sentence.push(next_word)
end

puts "our sentence now reads: #{sentence}"

puts "[1] = #{sentence[1]}"
puts "[-1] = #{sentence[-1]}"
puts sentence.pop()
puts sentence.join(' ')
puts sentence[3..7].join("#")
