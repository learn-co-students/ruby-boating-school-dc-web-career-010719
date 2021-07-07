class Instructor

	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def pass_student(student_name, test_name)
		#1. Call BoatingTest.all and check the values and check if a 
		# Boating Test object exists where the student name and test name equal 
		# our parameters. 
		#2. Create a boating test object with the given parameters and the status
		# passed if the above conditional returns no objects.
		#3. Return the new boating test object. 
		result = BoatingTest.all.find do |test|
			test.student.name == student_name && test.name == test_name
		end
		
		if result.nil? || result == false
			result = BoatingTest.new(student_name, test_name, "passed", self)
		else
			result.status = "passed"
		end

		return result
	end



	def fail_student(student_name, test_name)
		result = BoatingTest.all.find do |test|
			test.student.name == student_name && test.name == test_name
		end
		
		if result.nil? || result == false
			result = BoatingTest.new(student_name, test_name, "failed", self)
		else
			result.status = "failed"
		end

		return result
	end

	def self.all
		@@all
	end

end
