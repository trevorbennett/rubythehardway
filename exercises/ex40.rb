#module practice

#I have created module40.rb for this purpose

require "./module40.rb"

Module40.banana()
puts Module40::PI

#class version of the same module
class Class40
  def initialize()
    @PI = 3.1415
  end
  attr_reader :PI

  def banana()
    puts "Bananas are gr8"
  end
end

new_class = Class40.new
new_class.banana()
puts new_class.PI

class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end

  def sing
    @lyrics.each{|input| puts input}
  end
end

poem = Song.new(["cows may eat","and birds may fly", "gorillas may beat", "and people may try", "but that's about it"])
sedate = Song.new(["20-20-24 hours agoooooo,", "I wanna be sedated"])

poem.sing
sedate.sing
