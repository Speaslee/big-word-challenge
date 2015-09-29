class WordCounter
  # Your code goes here
  attr_accessor :word_length, :dictionary
  def initialize word_length, where
    word_length = 5
    words= where
  end


  def count_of_words_matching_length
    a = dictionary.select {|word| word.length? == wc}
   a.count
  end

end

dictionary = File.read("/usr/share/dict/words").split

  # => ["A", "a", "aa", "aal", "aalii", "aam", "Aani", "aardvark", ...]
wc = WordCounter.new 5, dictionary

puts "Finding words of length #{wc.word_length} ..."
puts "There are #{wc.count_of_words_matching_length}"
