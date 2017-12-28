#new built in syntactic tool, the heredoc: <<end

puts "well let's see how this thing works then"

poem = <<END
I don't want to write poems
Something, something
Doki-Doki
Liturature Club
What a game.
END

puts "------------"
puts poem
puts "------------"

hardmath = 3+6/3*2

puts "this is clearly 6: 6 :^)"
puts "just kidding, it's 7, see: #{hardmath}"

#multivar returns, neato!

def grind_that_coffee(sacks)
  bags = 150*sacks
  beans = 1750*bags
  grounds = 950*beans
  return bags, beans, grounds
end

bags, beans, grounds = grind_that_coffee(1)

puts "we have #{bags} bags, #{beans} beans, and #{grounds} ground bits of coffee from a single sack!"
