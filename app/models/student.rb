class Student

  attr_reader :first_name, :tests

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
    @tests = []
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    new_test = BoatingTest.new(self, test_name, status, instructor)
    instructor.tests << new_test
    self.tests << new_test
    new_test
  end

  def self.find_student(first_name)
    @@all.find do |student|
      student.first_name == first_name
    end
  end

  # This is a helper method
  def passed_tests
    self.tests.select do |test|
      test.status == 'passed'
    end
  end
  # End of helper method

  def grade_percentage
    (self.passed_tests.length.to_f / self.tests.length * 100).round(2)
  end

end
