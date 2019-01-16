require 'pry'

class Student
  attr_accessor :name
  @@all = []

  def initialize(first_name)
    @name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test, status, instructor)
    BoatingTest.new(self, test, status, instructor)
  end

  def self.find_student(first_name)
    object = self.all.find {|student| student.name == first_name}
    if object.nil?
      "There's no student by that name."
    else
      return object
    end
  end

  def grade_percentage
    tests = BoatingTest.all.select {|test| test.student.name == self.name}
    passed = tests.count {|test| test.status == "passed"}.to_f
    total = tests.length.to_f
    passed/total.to_f
  end
end
