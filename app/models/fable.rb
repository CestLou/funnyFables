class Fable < ActiveRecord::Base
	
	belongs_to :author, class_name: "User"
	has_many :users
	has_many :lines
	accepts_nested_attributes_for :lines
	serialize :key_words
	
	has_many :ratings, class_name: "FableRating"
	
	
	def is_nsfw?
		rating.nsfw
	end
	
	def print_story
		story = ""
		lines.each do |line| 
			story += " " unless (line["text"] =~ /^[[:punct:]]/)
			story += "#{line["text"]} #{line["key_word"]}"
		end
		story.strip
	end
	
end
