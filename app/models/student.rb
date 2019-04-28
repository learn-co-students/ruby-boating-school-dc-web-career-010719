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
    if !BoatingTest.test_exists?(self, test_name)
      BoatingTest.new(self, test_name, status, instructor)
    else
      puts "A boating test by this name is already on record! Please choose a new name."
      return nil
    end
  end

  def self.find_student(name)
    self.all.find{ |student| name == student.first_name }
  end

  def grade_percentage
    tests = BoatingTest.all.select { |test| test.student == self }
    passing = tests.select { |test| test.status == "passed" }
    grade = ((passing.size.to_f/tests.size.to_f)*100).round(2)
  end

end
