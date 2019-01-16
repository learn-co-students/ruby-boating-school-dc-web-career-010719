class BoatingTest

	attr_reader :name
	attr_accessor :student, :status, :instructor
	@@all = []

	def initialize(student, name, status, instructor)
		@student = student
		@name = name
		@status = status
		@instructor = instructor
		@@all << self
	end

	def self.all
		@@all
	end
	


end
