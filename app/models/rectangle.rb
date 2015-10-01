class Rectangle < ActiveRecord::Base
	validates :color, presence: true,
					  length: { minimum: 1}
	validates :width, presence: true
	validates :height, presence: true
end
