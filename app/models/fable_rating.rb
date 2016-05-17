class FableRating < ActiveRecord::Base
	belongs_to :fable
	belongs_to :user_fable
end
