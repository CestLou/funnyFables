class Line < ActiveRecord::Base
	belongs_to :fable
	KEY_WORDS = ["noun", "verb", "adjective", "plural noun", "person's name", "animal"]
	
	def self.key_words
		KEY_WORDS
	end
	
end
