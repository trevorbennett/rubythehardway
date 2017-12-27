user = ARGV
prompt = "> "

puts "Hello #{user}"
puts "Do you like coffee?"
puts prompt
does_like = $stdin.gets.chomp

puts "I asked coffee if it likes you, and it said #{does_like} back!"
