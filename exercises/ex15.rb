filename = ARGV.first
text = open(filename)
puts "this file contains #{text.read}"
puts "give me a new file name: "
filename2 = $stdin.gets.chomp
text2 = open(filename2)
puts "here ya go #{text2.read}"
