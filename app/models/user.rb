class User < ApplicationRecord
	has_many :posts
	has_many :comments
	validates :fname, presence:true
	validates :username, length: {minimum:4, maximum:30}
	validates :email, uniqueness:true
	def is_admin?
		id == 11
	end
end
