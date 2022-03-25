def substrings (string, dictionary)
    substring_hash = Hash.new
    string_lower = string.downcase
    dictionary.each do |word|
        if string_lower.scan(word) != []
            substring_hash[word] = string_lower.scan(word).length()
       end
    end
    puts substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)