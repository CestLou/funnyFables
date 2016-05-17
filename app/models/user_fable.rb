class UserFable < ActiveRecord::Base
	belongs_to :user
	belongs_to :fable
	has_many :ratings, class_name: "FableRating"
	
	serialize :answers, Array
	
	# returns of the the original fables
	def self.get_fables
		Fable.where(id: UserFable.uniq.pluck(:fable_id))
	end
	
	def print_story
		story = ""
		self.fable.lines.each_with_index do |line, i| 
			story += " " unless (line["text"] =~ /^[[:punct:]]/)
			story += "#{line["text"]} #{self.answers[i]}"
		end
		story.strip
	end
	
end
