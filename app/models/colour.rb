class Colour < ActiveRecord::Base
	belongs_to :user
	validates_length_of :brandname, :productname, :colourname, :maximum => 100 
	validates_format_of :hexcode, :with => /\A([a-f0-9]{3}){,2}\z/i, :message => "Must be a valid hexcode"

	def self.random_colours(number, userid)
		colours = Colour.where(user_id: userid).sample(number)
		puts colours
		return colours
	end
end
