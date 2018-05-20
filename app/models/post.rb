class Post < ApplicationRecord
	belongs_to :user  
	has_many :postcomments   
	has_many :photos  
	validates :title, length: { in: 1..20}
	validates :title, presence: true	
end
