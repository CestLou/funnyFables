class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	has_many :authored_fables, class_name: "Fable", foreign_key: :author_id
	has_many :completed_fables, class_name: "UserFable"
	#has_many :ratings, class_name: "FableRating"
	#has_many :rated_fables, through: :ratings, class_name: "Fable"
	
	
	
	def complete_fable(hash)
		f = UserFable.find_or_create_by(fable_id: hash[:fable_id])
		f.answers =  hash[:answers]
		f.user_id = self.id
		f.save
	end
	
	def print
		"@#{self.username}"
	end
	
	
end
