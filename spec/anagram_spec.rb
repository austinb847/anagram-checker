require('rspec')
require('anagram')

describe("Word#check_for_vowels") do
  it("should return false if input word has no vowels") do
    word = Word.new("tlchk", "bye")
    expect(word.check_for_vowels?('tlchk')).to(eq(false))
  end
end

describe("Word#check_for_anagram") do
  it("should return 'You need to input actual words' if either word has no vowels") do
    word = Word.new("hi", "tlchk")
    expect(word.check_for_anagram()).to(eq('You need to input actual words'))
  end

  it("should return 'These words are anagrams' if both words contain the same letters in a differnt order") do
    word = Word.new("Tom Marvolo Riddle", "I am Lord Voldemort")
    expect(word.check_for_anagram()).to(eq('These words are anagrams'))
  end

  it("should return 'These words have no letter matches and are antigrams' if there are no letter matches") do
    word = Word.new('hi', 'bye')
    expect(word.check_for_anagram()).to(eq('These words have no letter matches and are antigrams'))
  end

end

describe("Word#format_string") do
  it("should remove spaces and punctuation from string, and set it to lower case") do
    word = Word.new("HOw's it going?", "bye")
    expect(word.format_string("HOw's it going?")).to(eq("howsitgoing"))
  end
end

describe("Word#get_letter_matches") do
  it("should return how many letters match and which letters match") do
    word = Word.new("Austin", "Justin")
    expect(word.get_letter_matches("Austin","Justin")).to(eq("These words aren't anagrams but 5 letters match: u,s,t,i,n."))
  end
end

describe("Word#actual_word?") do
  it("should return false if input word has the same 3 letters consecutivly") do
    word = Word.new("fleeew", "bob")
    expect(word.actual_word?("fleeew")).to(eq(false))
  end
end