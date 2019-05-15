def word_sizes(string)
  word_sizes = {}
  string.split.each do |word|
    if word_sizes.has_key?(word.length)
      word_sizes[word.length] += 1
    else
      word_sizes[word.length] = 1
    end
  end

  word_sizes
end

if __FILE__ == '06_letter_counter_1.rb'
  puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
  puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
  puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
  puts word_sizes('') == {}
end
