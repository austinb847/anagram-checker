require('rspec')
require('anagram')

describe("Word#check_for_anagram") do
  it("should return 'you need to input actual words' if either input words have no vowels") do
    word = Word.new()
    anagram = word.check_for_anagram("hi", "tlchk")
    expect(anagram).to(eq('You need to input actual words'))
  end
end