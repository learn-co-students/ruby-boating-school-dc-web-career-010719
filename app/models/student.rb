require "pry"

class Student
  attr_accessor :first_name
  @@all = []

  def initialize(first_name)
  	@first_name = first_name
  	@@all << self
  end

  def self.all
  	@@all
  end
 
  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    BoatingTest.all.find do |tests|
      tests.student.first_name == first_name
      return tests.student
    end
  end
  
  def tests_all
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def grade_percent
    grade_array = self.tests_all.collect do |test|
    	test.test_status
    end
    (grade_array.count("pass").to_f/grade_array.count.to_f) * 100
  	
  end

end

