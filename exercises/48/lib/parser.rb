#ex49
# NLP Sentences are well defined, and in this case we will be using a subset
#of one subject, verb, and object

class Sentence
  def initialize(subject,verb,object)
    @subject = subject[1] # take value from key value pair, hence the [1]
    @verb = verb[1]
    @object = object[1]
  end

  #attr_reader usage: https://stackoverflow.com/questions/5046831/why-use-rubys-attr-accessor-attr-reader-and-attr-writer
  attr_reader:subject
  attr_reader:verb
  attr_reader:object
end

class ParserError < Exception
end

def peek(words)
  if words
    word = words[0]
    return word[0]
  else
    return nil
  end
end

#create subset of words matching type = expectation
def match(words, expectation)
  if words
    word = words.shift
    if word[0] = expectation
      return word
    else
      return nil
    end
  else
    return nil
  end
end

#ignore garbage words by purging them from the word list
def skip(words,type)
  while (peek(words) == type)
    match(words, type)
  end
end

def parse_verb(words)
  skip(words, "stop")
  if(peek(words)=='verb')
    return match(words,'verb')
  else
    raise ParserError.new("non verb found in place of verb")
  end
end

def parse_object(words)
  skip(words, "stop")
  next_word = peek(words)
  if(next_word =='direction')
    return match(words,'direction')
  elsif(next_word == 'noun')
    return match(words,'noun')
  else
    raise ParserError.new("non object found in place of object")
  end
end

def parse_subject(words)
  skip(words, "stop")
  next_word = peek(words)
  puts next_word
  if(next_word == 'noun')
    return match(words,'noun')
  elsif (next_word == 'verb')     #the default case, if no subject is given its assumed to be the player
    return ['noun', 'player']
  else
    raise ParserError.new("no verb found")
  end
end

def parse_sentence(words)
  subject = parse_subject(words)
  verb = parse_verb(words)
  object = parse_object(words)
  return Sentence.new(subject, verb, object)
end

#for debugging
# x = parse_sentence([['verb', 'run'], ['direction', 'north']])
# puts x.subject
# puts x.verb
# puts x.object
