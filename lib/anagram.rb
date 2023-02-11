# Your code goes here!
class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    candidates.select do |candidate|
      candidate.downcase != @word && candidate.downcase.chars.sort == @word.chars.sort
    end
  end
end

anagram = Anagram.new("listen")
puts anagram.match(%w(enlists google inlets banana))