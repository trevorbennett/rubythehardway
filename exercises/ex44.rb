#inheritance and composition

class Dad
  def implicit()
    puts "Parent.jpg"
  end
end

class Daughter < Dad
end

class Son < Dad
  def implicit()
    puts "I'm not a copycat!"
  end
end

class Alter_Boi < Dad
  def implicit()
    puts "I'm an individual"
    super()
    puts "or am I?"
  end
end

dad = Dad.new()
daughter = Daughter.new()
son = Son.new()
boi = Alter_Boi.new()

dad.implicit
daughter.implicit
son.implicit
boi.implicit

#comp - delegate your responsibilities

class Banana
  def lol
    puts "lol"
    return "lol"
  end

  def help
     puts "please help me"
  end
end

class Apple
  def initialize
    @banana = Banana.new
  end

  def set_lol
    @lol = @banana.lol
  end

  def call_for_help
    @banana.help
  end
end

apple = Apple.new
apple.set_lol
apple.call_for_help
