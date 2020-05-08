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
    expect(word.check_for_anagram('hi', 'tlchk')).to(eq('you need to input actual words'))
  end
end