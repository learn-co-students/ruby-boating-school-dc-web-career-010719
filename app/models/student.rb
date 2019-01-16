require 'pry'
class Student

  attr_reader :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end

  def self.find_student(first_name)
    self.all.find {|student| student.first_name == first_name}
  end

  def grade_percentage
    test_results = []
    BoatingTest.all.each do |test|
      if test.student.first_name == self.first_name
        test_results << test.test_status
      end
    end
    grade = test_results.count("passed").to_f / test_results.count.to_f
    grade = grade *100.0
    grade.round(2)
  end



end
