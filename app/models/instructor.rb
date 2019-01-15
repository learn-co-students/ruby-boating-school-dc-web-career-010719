class Instructor
  attr_accessor :name
  @@all = []

  def initialize(name)
  	@name = name
  	@@all << self
  end

  def pass_student(student, test_name)
  	# binding.pry
  	instance = BoatingTest.all.find do |test|
  		test.test_status = "pass" if test.test_name == test_name && test.student == student
  	end
  	instance = BoatingTest.new(student, test_name, "pass", self) if instance == nil || instance == false
  	return instance
   end

   def fail_student(student,test_name)
  	instance = BoatingTest.all.find do |test|
  		test.test_status = "fail" if test.test_name == test_name && test.student == student
  	end
  	instance = BoatingTest.new(student, test_name, "fail", self) if instance == nil || instance == false
  	return instance


   end


end


