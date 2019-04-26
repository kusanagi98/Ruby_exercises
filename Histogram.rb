puts "Feed text:"
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each do |word|
  frequencies[word] += 1
end
frequencies = frequencies.sort_by do |word, freq|
  freq
end
frequencies.reverse!
frequencies.each { |word, freq| 
  puts word + " " + freq.to_s
  }