class Fable < ActiveRecord::Base
	
	belongs_to :author, class_name: "User"
	has_many :user_fables
	has_many :users, through: :user_fables
	has_many :lines
	accepts_nested_attributes_for :lines, reject_if: proc { |attr| attr['text'].blank?}
	
	has_many :ratings, class_name: "FableRating"
	
	
	def is_nsfw?
		rating.nsfw
	end
	
	def print_story
		story = ""
		lines.each_with_index do |line, i| 
			story += " " unless (line["text"] =~ /^[[:punct:]]/)
			story += "#{line["text"]} #{line['kind'].to_s.upcase}\n"
		end
		story.strip
	end
	
	def fillable_lines
		lines.select{|l| !!l['kind']}
	end
	
	def get_author
	end
	
	def get_rating
	end
	
end
