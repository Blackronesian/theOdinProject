def substrings(string, dictionary)
  string = string.downcase
  results = {}

  dictionary.each do |word|
    count = string.scan(word.downcase).length
    results[word] = count if count > 0
  end

  results
end

dictionary = [
  "below","down","go","going","horn","how","howdy",
  "it","i","low","own","part","partner","sit"
]

puts substrings("below", dictionary)
# Expected: { "below" => 1, "low" => 1 }

puts substrings("Howdy partner, sit down! How's it going?", dictionary)
# Expected:
# {
#   "down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1,
#   "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1
# }

