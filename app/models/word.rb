# require 'active_record'

class Word < ActiveRecord::Base

  def self.anagrams(word)
    word = word.downcase.split("").sort.join
    word_objects_by_size = Word.where('size = ? AND name like ?', word.size, "%#{word[-1]}%")
    word_objects_by_size.select {|x| x.name.downcase.split("").sort.join == word }.map { |word| word.name  }
  end
end

