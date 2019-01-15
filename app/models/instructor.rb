require "pry"

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

  def pass_student(student_name, test_name)
    student_pass = Student.find_student(student_name)
     specific_test = BoatingTest.all.find { |test| test.student == student_pass && test.name == test_name && test.instructor == self }
    if specific_test.nil?
      BoatingTest.new(student_pass, test_name, "passed", self)
    else
      specific_test.status = "passed"
    end
    specific_test
  end

  def fail_student(student_name, test_name)
    student_fail = Student.find_student(student_name)
     specific_test = BoatingTest.all.find { |test| test.student == student_fail && test.name == test_name && test.instructor == self }
     # binding.pry
    if specific_test.nil?
      BoatingTest.new(student_fail, test_name, "failed", self)
    else
      specific_test.status = "failed"
    end
    specific_test
  end

end

  # def fail_student(student_name, test_name)
  #   student_fail = Student.find_student(student_name)
  #     BoatingTest.all.find { |test| test.student == student_fail && test.name == test_name && test.instructor == self }
  #         test.status = "failed"
  #     else
  #       # binding.pry
  #       BoatingTest.new(student_fail, test_name, "failed", self)
  #     end
  #   end

# end
