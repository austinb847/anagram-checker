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
  end
end