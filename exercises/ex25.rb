module Ex25

  def Ex25.split(input)
    words = input.split(' ')
    return words
  end

  def Ex25.sort(input)
    return input.sort
  end

  def Ex25.print_first(words)
    word = words.shift
    puts word
  end

  def Ex25.print_last(words)
    word = words.pop
    puts word
  end

  def Ex25.sort_sentence(sentence)
    words = Ex25.split(sentence)
    return Ex25.sort(words)
  end

  def Ex25.print_first_last(sentence)
    words = Ex25.split(sentence)
    Ex25.print_first(words)
    Ex25.print_last(words)
  end

  def Ex25.sort_print_first_last(sentence)
    words = Ex25.sort_sentence(sentence)
    Ex25.print_first(words)
    Ex25.print_last(words)
  end

end
