module Lexicon
  #scan should take in a word (subset string) and return a key value pair
  def Lexicon.scan(word)
    if(word == "north")
      return [["direction",word]]
    end
  end
  # getWords = $stdin.gets.chomp
  # words = getWords.split
end
