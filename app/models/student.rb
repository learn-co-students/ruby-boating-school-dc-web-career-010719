class Student

	attr_accessor :name 
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	# #add_boating_test will create a new instance of a boating
	# test. It will take several parameters: a student object,
	# a boating name, a boating status and an Instructor object. 
	def add_boating_test(name, status, instructor)
		#1. Create a new boating test object which takes in a student,
		# name, status and instructor parameter. 
		new_boat = BoatingTest.new(self, name, status, instructor)
		
	end

	# This class method takes in a parameter of a student's
	# first name and returns the student object.
	def self.find_student(name)
		#1. Find the student based on the parameter and
		# return the student object. 
		self.all.select do |student|
			student.name == name
		end
	end

	# This method returns the percentage of tests a student has passed
	# in the form of a float.
	def grade_percentage
		#1. Collect all of the tests a student has taken 
		#2. Find the percentage of tests the student has passed.
		#3. Return the amount as a float.
		grade_arr = BoatingTest.all.select do |test|
			test.student == self
		end
		
		grade_arr = grade_arr.collect do |test|
			test.status
		end
		(grade_arr.count("passed").to_f/grade_arr.count.to_f) * 100
	end

	def self.all
		@@all
	end

end
