def substrings(user_str, dictionary)
    words_found = Hash.new(0)
    str_array = user_str.downcase.split
    str_array.each do |word|
        dictionary.each do |searching_word|
            if word.include?(searching_word)
                words_found[searching_word] += 1
            end
        end
    end
    words_found
end
    
dictionary = ["conceive", "eat", "gravel", "formulate", "cooperative", "pleasure", "feather", "resign", 
    "tease", "manage", "constraint", "routine", "echo", "scale", "admission", "charity", "organ", "hold", 
    "tape", "formula", "i", "he", "below", "down", "go", "going", "horn", "how", "howdy", "it"]
    
print "Write whatever: "
user_str = gets.chomp
    
puts "Words Found in my book of facts:"
puts substrings(user_str, dictionary)    