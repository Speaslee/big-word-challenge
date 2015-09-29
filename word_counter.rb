class WordCounter
  # Your code goes here

  def initialize l, where
    @length = l
    @words= where
    @count=0
  end

  def word_length
    @length
  end

  def count_of_words_matching_length
  @words.each do |word|
    if word.length == @length
      @count+=1
    end
  end
  return @count
  end

end

dictionary = File.read("/usr/share/dict/words").split

  # => ["A", "a", "aa", "aal", "aalii", "aam", "Aani", "aardvark", ...]
wc = WordCounter.new 5, dictionary

puts "Finding words of length #{wc.word_length} ..."
puts "There are #{wc.count_of_words_matching_length}"
