class Colour < ActiveRecord::Base
	belongs_to :user
	validates_length_of :brandname, :productname, :colourname, :maximum => 100 

	def self.random_colours(number, userid)
		colours = Colour.where(user_id: userid).sample(number)
		puts colours
		return colours
	end
end
