def substrings(search, dictionary)
  search = search.downcase
  successful = Hash.new(0)

  dictionary.each do |word|
    matches = search.scan(/#{word}/)
    successful[word] += matches.size if matches.any?
    
  end
  return successful
end
  



dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

