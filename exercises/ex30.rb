#else if

users = 100
computers = 150
terminals = 40

if computers > users
  puts "computers are ideal"
elsif computers < users
  puts "not enough computers free"
else
  puts "capacity has been reached"
end

if terminals > computers
  puts "are we in IBM?"
elsif computers > terminals
  puts "are we in [anywhere that isn't IBM]?"
else
  puts "I still think we might be in IBM guys"
end

if users > terminals
  puts "everybody gather round the terminals together"
else
  puts "if you can read this we are trapped in a 1980's IBM warehouse"
end
