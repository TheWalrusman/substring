
def substrings(input_word = '', dictionary = [])
  words_of_input = input_word.downcase!.split(' ')
  substrings_of_input = Hash.new(0)
  words_of_input.each do |word|
    dictionary.each { |string_to_match| substrings_of_input[string_to_match] += 1 if word.include?(string_to_match) }
  end
  return substrings_of_input
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

print substrings("Howdy partner, sit down! How's it going?", dictionary)