module Lexicon
  #scan should take in a word (subset string) and return a key value pair
  def Lexicon.scan(str)
    direction = ["north","south","east","west"]
    verb = ["go","kill","eat","roll"]
    noun = ["banana","bear","princess"]
    stop = ["the","in","of"]
    resultMap = []
    words = str.split
      words.each do |word|
      intWord =  convert_to_int(word)
      if(intWord != nil)
        resultMap.push(["number",intWord])
      elsif(direction.include? word)
        resultMap.push(["direction",word])
      elsif(verb.include? word)
        resultMap.push(["verb",word])
      elsif(stop.include? word)
        resultMap.push(["stop",word])
      elsif(noun.include? word)
        resultMap.push(["noun",word])
      else
        resultMap.push(["error",word])
      end
    end
    return resultMap
  end

  def Lexicon.convert_to_int(value)
    begin
      return Integer(value)
    rescue
      return nil
    end
  end
end
