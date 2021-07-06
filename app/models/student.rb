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

  def add_boating_test(name, status, instructor)
    test = BoatingTest.new(self, name, status, instructor)
  end

  def self.find_student(name)
    self.all.find do |student|
      student.first_name == name
    end
  end

  def boating_tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def grade_percentage
    tests = self.boating_tests
    passed_tests = tests.select do |test|
      test.test_status == "passed"
    end
    if tests != []
      (passed_tests.length.to_f / tests.length.to_f) * 100
    else
      0.0
    end
  end

end
