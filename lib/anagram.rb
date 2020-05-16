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
    # word1.chars.map{|l| word2.chars.include?(l)}
    matches = []
    word1.chars.each do |letter|
     word2.chars.each do |l|
       if(l == letter)
        matches.push(l)
       end
     end
    end
    uniq_matches = matches.uniq{|e| e}
    return "These words aren't anagrams but #{uniq_matches.count} letters match: #{uniq_matches.join(",")}."
  end

  def actual_word?(word)
    count = 1
    prev_letter = ""
    word.chars.each do |letter|
      if(prev_letter == letter)
        count += 1
      end
      prev_letter = letter
    end
    
    if count >= 3
      return false
    else
      return true
    end
  end

  def check_for_anagram()
    word1 = format_string(@word1)
    word2 = format_string(@word2)

    if !check_for_vowels?(word1) || !check_for_vowels?(word2)
      return "You need to input actual words"
    end

    if word1.chars.all?{|l| word2.chars.include?(l)}
      return "These words are anagrams"
    elsif word1.chars.none? {|l| word2.chars.include?(l)}
      return "These words have no letter matches and are antigrams"
    else
      get_letter_matches(word1, word2)
    end
  end
end