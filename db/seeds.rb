# require_relative '../app/models/word'
# class ParseText

#   def self.seed
    File.open('./db/web2.txt').each_line do |word|
      Word.create({name: word.chomp})
    end
#   end
# end

# ParseText.seed
