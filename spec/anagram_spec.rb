require('rspec')
require('anagram')

describe("Word#check_for_vowels") do
  it("should return false if input word has no vowels") do
    word = Word.new()
    expect(word.check_for_vowels('tlchk')).to(eq(false))
  end
end