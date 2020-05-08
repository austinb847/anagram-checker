class Word


  def check_for_vowels(word)
    if word.count("aeiouy") > 0
      true
    else
      false
    end
  end

  def check_for_anagram(word1, word2)
    word1 = word1.downcase
    word2 = word2.downcase

    if !check_for_vowels(word1) || !check_for_vowels(word2)
      return "You need to input actual words"
    end

    word1_letters = word1.chars
    if word1_letters.all?{|l| word2.chars.include?(l)}
      return "These words are anagrams"
    elsif word1_letters.none? {|l| word2.chars.include?(l)}
      return "These words have no letter matches and are antigrams"
    end
  end
end