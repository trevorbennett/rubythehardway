#branching logic using functions

def sword
  puts "You grab the blade, and find your base just as he swings at you. Do you dodge, or parry?"
  print "> "
  choice = $stdin.gets.chomp

  if choice == "dodge"
    puts "you roll to the left, and the gladiator misses. You find your feet, step back, and nearly slip on a quarterstaff."
    staff
  elsif choice == "parry"
    lose("You parry with the gladius, but your opponent's edge goes right to your fingers, cutting them off")
  else
    lose("You were too slow.")
  end
end

def bow
  puts "You grab the bow, but the gladiator advances on you too quickly to draw an arrow."
  puts " He charges you. Will you dodge or block?"
  print "> "
  choice = $stdin.gets.chomp

  if choice == "dodge"
    puts "You roll backwards, dropping your bow in the process. You created some distance between you and the gladiator."
    start
  elsif choice == "block"
    lose("You blocked with a bow? You deserve what's coming to you.")
  else
    lose("You were too slow.")
  end
end

def staff
  puts "The gladiator was not so lucky, and trips and dies. How much prize money would you like?"
  print "> "
  choice = $stdin.gets.chomp

  if (true if  Float(choice) rescue false)
    choice = choice.to_i
  else
    lose("Not a number.")
  end

  if choice > 1000 && choice >= 0
    lose "The senate denies your request, and sends another gladiator in to kill you."
  else
    puts "congrats hero, you win!"
  end
end

def lose(why)
  puts why + " You are impaled on the gladiator's sword and quickly bleed out."
  exit(0)
end

def start
puts "You find yourself in an Arena, a man is slowly approaching you."
puts "He has a sword and shield drawn. There are two weapons near you, a sword, and a bow, which do you grab?"
print "> "
choice = $stdin.gets.chomp

  if choice == "sword"
    sword
  elsif choice == "bow"
    bow
  else
    lose("You fumble for a weapon but fail to grab anything.")
  end
end

start
