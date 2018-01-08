require "48.rb"
require "test/unit"

class TestLexicon < Test::Unit::TestCase

  def test_direction_words
    assert_equal(Lexicon.scan("north"), [["direction","north"]])
    result = Lexicon.scan("south east west")
    assert_equal(result,[
      ["direction", "south"],
      ["direction", "east"],
      ["direction", "west"]
      ])
  end

end
