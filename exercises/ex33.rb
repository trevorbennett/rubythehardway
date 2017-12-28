#while loops

i = 0
numbers = []

while i < 6
  puts "i is #{i}, lets increment it"
  numbers.push(i)
  i += 1
end

puts "loop done, i is #{i}"
puts "total numbers result: #{numbers}"

numbers.each{|i| puts i}
