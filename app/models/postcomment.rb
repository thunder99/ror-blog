class Postcomment < ApplicationRecord
	belongs_to :user
	belongs_to :post
	validates :text, length: { in: 1..10}
	validates :text, presence: true
end
