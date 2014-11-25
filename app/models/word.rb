 # require_relative '../../config/environment'

class Word < ActiveRecord::Base
  # Remember to create a migration!
  def canonical(word)
    w = word.downcase
    array = w.split("")
    array.sort!
  end

  def is_anagram?(word1,word2)
    canonical(word1) == canonical(word2)
  end

  def anagrams
    matched_length_array = Word.all.to_a #where("length(name) = name.length").to_a
    anagrams_array = []
    matched_length_array.each do |dic|
      if is_anagram?(name,dic.name)
        anagrams_array << dic.name
      end
    end
    anagrams_array
  end

end

# w = Word.new(name:"iceman")
# p w.anagrams