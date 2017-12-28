input_file = ARGV.first

def print_all(file)
  puts file.read
end

def to_start(file)
  file.seek(0)
end

def output_current_line(line, file)
  puts "#{line}, #{file.gets.chomp}"
end

file = open(input_file)

print_all(file)

to_start(file)

current_line = 1

output_current_line(current_line, file)
current_line = current_line + 1
output_current_line(current_line, file)
current_line = current_line + 1
output_current_line(current_line, file)

file.close
