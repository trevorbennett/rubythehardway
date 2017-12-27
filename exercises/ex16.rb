filename = ARGV.first
text = open(filename, 'w')

#w for write, default param is read

puts "deleting  #{filename}..."
text.truncate(0)
puts "file deleted"
puts "give me three new lines of text:"
t1 = $stdin.gets.chomp
t2 = $stdin.gets.chomp
t3 = $stdin.gets.chomp

text.write(t1 + "\n" + t2 + "\n" + t3 + "\n")

puts "here ya go, closing file now"
text.close
