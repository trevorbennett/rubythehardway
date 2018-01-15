require "48.rb"
require "parser.rb"
require "test/unit"

class TestLexicon < Test::Unit::TestCase

  def test_parser
      assert_raise ParserError do
        parse_sentence([['verb', 'run'],['verb', 'run'],['verb', 'run']])
      end
      expected_sentence = Sentence.new(['noun','trevor'],['verb','eat'],['noun','bananas'])
      full_sentence = parse_sentence([
        ['noun','trevor'],
        ['stop','likes'],
        ['stop','to'],
        ['verb','eat'],
        ['noun','bananas']
        ])
      assert_equal(expected_sentence.subject,full_sentence.subject)
      assert_equal(expected_sentence.verb,full_sentence.verb)
      assert_equal(expected_sentence.object,full_sentence.object)

  end

  def test_direction_words
    assert_equal(Lexicon.scan("north"), [["direction","north"]])
    result = Lexicon.scan("south east west")
    assert_equal(result,[
      ["direction", "south"],
      ["direction", "east"],
      ["direction", "west"]
      ])
  end

  def test_verbs()
    assert_equal(Lexicon.scan("go"), [["verb","go"]])
    result = Lexicon.scan("go kill eat")
       assert_equal(result, [['verb', 'go'],
              ['verb', 'kill'],
              ['verb', 'eat']])
     end


     def test_stops()
       assert_equal(Lexicon.scan("the"), [['stop', 'the']])
       result = Lexicon.scan("the in of")
       assert_equal(result, [['stop', 'the'],
              ['stop', 'in'],
              ['stop', 'of']])
     end


     def test_nouns()
       assert_equal(Lexicon.scan("bear"), [['noun', 'bear']])
       result = Lexicon.scan("bear princess")
       assert_equal(result, [['noun', 'bear'],
              ['noun', 'princess']])
     end

     def test_numbers()
       assert_equal(Lexicon.scan("1234"), [['number', 1234]])
       result = Lexicon.scan("3 91234")
       assert_equal(result, [['number', 3],
              ['number', 91234]])
     end


     def test_errors()
       assert_equal(Lexicon.scan("ASDFADFASDF"), [['error', 'ASDFADFASDF']])
       result = Lexicon.scan("bear IAS princess")
       assert_equal(result, [['noun', 'bear'],
              ['error', 'IAS'],
              ['noun', 'princess']])
     end
end
