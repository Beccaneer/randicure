class Tech < ActiveRecord::Base
	belongs_to :user
	has_many :tutorials
	validates :title, :mincol, :maxcol, :minaccents, :maxaccents, :presence => true
	validates_numericality_of :maxcol, :greater_than_or_equal_to => :mincol
	validates_numericality_of :maxcol, :less_than_or_equal_to => 20
	validates_numericality_of :minaccents, :greater_than_or_equal_to => 0
	validates_numericality_of :maxaccents, :minaccents, :less_than_or_equal_to => 10
	validates_numericality_of :maxaccents, :greater_than_or_equal_to => :minaccents
	

	def self.random_tech(userid)
		id = Tech.where(user_id: userid).pluck(:id).sample
		return id
	end
end
