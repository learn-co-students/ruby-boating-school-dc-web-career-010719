require "pry"

class Student

attr_accessor :name

  @@all = []

    def initialize(name)
      # binding.pry
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def add_boating_test(name, status, instructor)
      BoatingTest.new(self, name, status, instructor)
      # binding.pry
    end

    def self.find_student(first_name)
      self.all.find do |student|
        student.name == first_name
      end
      # binding.pry
    end

    def grade_percentage
      all_tests = BoatingTest.all.select do |tests|
        tests.student == self
      end
      passed = all_tests.select do |test|
        test.status == "passed"
      end
      # binding.pry
      passed.length.to_f / all_tests.length * 100
    end

  end


# Student#add_boating_test should initialize a new boating test
# with a student (Object), a boating test name (String),
# a boating test status (String), and an Instructor (Object)


 # Student.find_student will take in a student first name and
 # output that student (Object)
