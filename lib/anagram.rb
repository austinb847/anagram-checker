require 'pry'

class Word
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end


  def check_for_vowels?(word)
    if word.count("aeiouy") > 0
      true
    else
      false
    end
  end

  def format_string(word)
    word.downcase.gsub(/[^a-z]/,'')
  end

  def get_letter_matches(word1, word2)
    matches = word1.chars.map do |letter|
      if word2.chars.include?(letter)
        letter
      end
    end

    matches.compact.uniq{|e| e}
  end

  def actual_word?(word)
    letter_chunks = word.each_char.chunk_while(&:==).map(&:join)
    !letter_chunks.any?{|c| c.length >=3}
  end

  def check_for_anagram()
    word1 = format_string(@word1)
    word2 = format_string(@word2)

    if !check_for_vowels?(word1) || !check_for_vowels?(word2)
      return "You need to input actual words"
    end

    if !actual_word?(word1) || !actual_word?(word2) 
      return "A word can't have three or more consecutive letters. Input an actual word"
    end

    if word1.chars.all?{|l| word2.chars.include?(l)}
      return "These words are anagrams"
    elsif word1.chars.none? {|l| word2.chars.include?(l)}
      return "These words have no letter matches and are antigrams"
    else
      uniq_matches = get_letter_matches(word1, word2)
      return "These words aren't anagrams but #{uniq_matches.count} letters match: #{uniq_matches.join(",")}."
    end
  end
end