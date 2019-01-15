class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
    @boating_tests = []
  end

  def self.all
    @@all
  end

  def add_boating_test(name, status, instructor)
    boating_test = BoatingTest.new(self, name, status, instructor)
    @boating_tests << boating_test
  end

  def boating_tests
    @boating_tests
  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end
  end

  def grade_percentage
    passed_tests = self.boating_tests.select do |test|
      test.status == 'passed'
    end
    percentage = (passed_tests.length.to_f / self.boating_tests.length * 100).round(2)
  end

end
