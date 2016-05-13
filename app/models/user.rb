class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	
	has_many :fables
	has_many :completed_fables, through: :fables
	has_many :ratings, class_name: "FableRating"
	has_many :rated_fables, through: :ratings, class_name: "Fable"
end
