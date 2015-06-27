class Colour < ActiveRecord::Base
	belongs_to :user

	def self.random_colours(number, userid)
		colours = Colour.where(user_id: userid).sample(number)
		puts colours
		return colours
	end
end
