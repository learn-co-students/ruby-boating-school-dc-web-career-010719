require 'pry'

class Instructor
  attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def pass_student(first_name, test_name)
   test_to_pass = BoatingTest.all.find {|test|
    test.student.first_name == first_name && test.test_name == test_name
     }
     test_to_pass.test_status = "passed"
   end

   def fail_student(first_name, test_name)
      test_to_fail = BoatingTest.all.find {|test|
       test.student.first_name == first_name && test.test_name == test_name
        }
        test_to_fail.test_status = "failed"
      end


end
