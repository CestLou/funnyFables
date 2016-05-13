class Fable < ActiveRecord::Base
	
	belongs_to :author, class_name: "User"
	has_many :users
	has_many :lines
	accepts_nested_attributes_for :lines
	serialize :key_words
	
	has_many :ratings
	
	
	def is_nsfw?
		rating.nsfw
	end
	
end
