#writing a scanner

getWords = $stdin.gets.chomp
words = getWords.split

def convert_number(object)
  begin
    return Integer(object)
  rescue
    return nil
  end
end
