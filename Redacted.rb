puts "feed input plz:"
text = gets.chomp
puts "what do you want to hide:"
redact = gets
redact.chomp!
redacts = redact.split(" ")
words = text.split(" ")
newtext = ""
s = 0
words.each do |word|
  redacts.each do |red|
    if word == red 
      newtext += "REDACTED "
      s = 1
    end
  end
  if s != 1
    newtext += word + " "
  else s = 0
  end
end
print newtext