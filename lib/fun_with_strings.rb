module FunWithStrings
  def palindrome?
  onlyLetters = self.downcase.scan(/\w/)
  onlyLetters == onlyLetters.reverse
  
  end
  def count_words
    frequencies = Hash.new(0)
    self.downcase.scan(/\b[a-z]+/).each { |word| frequencies[word] += 1 }
    frequencies
  end
  def anagram_groups
    self.downcase.split.group_by { |word| word.chars.sort}.values
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
