#decision making by the user
#time to make a CYOA!
print "The archers ready their arrows, a narrow, treacherous scaffolding seperates you from them. What do you do?"
print "> "
input = $stdin.gets.chomp
if(input == "roll" || input == "dodge")
  puts "You run forward and roll under the arrows, there are now an archer to your left and to your right. Which do you attack?"
  print "> "
  input = $stdin.gets.chomp
  if(input == "left")
    print "you charge the archer to your left, knocking him to the depths below. You get impaled against the wall by the archer behind you for your trouble, "
    puts "but you manage to repay the favor. You win!"
  elsif(input=="right")
    print "you charge the archer to your right, knocking him to the depths below. You get shot from behind you and quickly join him."
    puts "YOU DIED"
  else
    puts "YOU DIED"
  end
elsif(input == "block")
  puts "The tree sized arrows fired by the archers stagger you, you lose your footing and fall."
  puts "YOU DIED"
else
  puts "YOU DIED"
end
