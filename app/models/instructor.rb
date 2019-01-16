class Instructor

  attr_reader :name, :tests

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @tests = []
  end

  def self.all
    @@all
  end

  # This is a helper method
  def grade_student(student, test_name)
    self.tests.find do |test|
      test.student == student && test.test_name == test_name
    end
  end
  # End of helper method

  def pass_student(student, test_name)
    if self.grade_student(student, test_name).nil?
      test = BoatingTest.new(student, test_name, 'passed', self)
    else
      test = self.grade_student(student, test_name)
      test.status = 'passed'
    end
    test
  end

  def fail_student(student, test_name)
    if self.grade_student(student, test_name).nil?
      test = BoatingTest.new(student, test_name, 'failed', self)
    else
      test = self.grade_student(student, test_name)
      test.status = 'failed'
    end
    test
  end

end
