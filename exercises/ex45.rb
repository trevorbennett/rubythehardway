require './game45.rb'

class FiftyFiftyRoom
  def a
    puts "Welcome to the luck room! Choose a number, 1 or 2"
    input = $stdin.gets.chomp
    random = (rand.round + 1).to_s
    if (random == input)
      puts "you beat the luck room!"
    else
      puts "you dun goofed, kiddo."
      exit(1)
    end
  end
end

class StartRoom
  def a
    puts "Welcome to the start. Type 'start' to confirm, that you aren't a robot"
    input = $stdin.gets.chomp
    if ("start" == input)
      puts "you beat the start! Your mother must be so proud."
    else
      puts "SHODAN PLS GO"
      exit(1)
    end
  end
end

class EndRoom
  def a
    puts "Well you did it...you won. Any last words?"
    input = $stdin.gets.chomp
    puts "...cool, champ. Bye!"
    exit(0)
  end
end

class TriviaRoom
  def a
    puts "Welcome to the trivia room! Please answer this legitimate and fair question. Who did 9/11?"
    input = $stdin.gets.chomp
    if ("bush" == input)
      puts "THE TRUTH IS OUT THERE"
    else
      puts "I'M TIRED OF PEOPLE LIKE YOU GOING ON TV AND USING LONG RANGE NEURONAL TRANSMITTERS TO BROADCAST THE SIGNAL THAT CONTROLS THE GOOD"
      puts "PEOPLE OF THIS COUNTRY AND TRIES TO CONVINCE THEM THAT YOU AREN'T PUTTING CHEMICALS IN THE WATER TO TURN THE FREAKING FROGS GAY!"
      exit(1)
    end
  end
end

roomMap = [StartRoom.new,FiftyFiftyRoom.new,TriviaRoom.new,EndRoom.new]



engine = Engine.new
engine.play(roomMap)
