require('rspec')
require('anagram')

describe("Word#check_for_vowels") do
  it("should return false if input word has no vowels") do
    word = Word.new()
    expect(word.check_for_vowels('tlchk')).to(eq(false))
  end
end

describe("Word#check_for_anagram") do
  it("should return 'You need to input actual words' if either word has no vowels") do
    word = Word.new()
    expect(word.check_for_anagram('hi', 'tlchk')).to(eq('You need to input actual words'))
  end

  it("should return 'These words are anagrams' if both words contain the same letters in a differnt order") do
    word = Word.new()
    expect(word.check_for_anagram('ruby', 'bury')).to(eq('These words are anagrams'))
  end

end