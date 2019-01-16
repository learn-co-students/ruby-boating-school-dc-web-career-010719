require 'pry'
class Instructor
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def pass_student(student_name, test_name)
    grade_student(student_name, test_name, "passed")
  end

  def fail_student(student_name, test_name)
    grade_student(student_name, test_name, "failed")
  end

  def grade_student(student_name, test_name, grade)
    array = []
    string = "There's no student by that name."
    if Student.find_student(student_name) != string
      array = BoatingTest.all.select do |btest|
        btest.student == student_name && btest.test == test_name
      end
      if array != []
        array[0].status = grade
        return array[0]
      else
        student = Student.find_student(student_name)
        return student.add_boating_test(test_name, grade, self)
      end
    else
      return "There's no student by that name."
    end
  end

  def self.all
    @@all
  end
end
