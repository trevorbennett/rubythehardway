#file copying

from, to = ARGV
puts "Copying #{from} to #{to}"

text_stream = open(from)
#w for write, default param is read
text = text_stream.read

text_stream.close
text_stream = open(to, 'w')
text2 = text_stream.write(text)
text_stream.close

puts "done?"
