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

  def add_boating_test(test_name, test_status, instructor_object)
    BoatingTest.new(self, test_name, test_status, instructor_object)
  end

  def self.find_student(first_name)
    self.all.each do |student|
      if student.first_name == first_name
        return student
      end
    end
  end

  def grade_percentage

    # phil_tests = []
    # BoatingTest.all.each do |test|
    #   if test.student == self
    #     phil_tests << test
    #   end
    # end
    phil_tests = BoatingTest.all.select { |test| test.student == self}
    pass = 0.0
    total = 0.0
    phil_tests.each do |t|
      if t.test_status == 'passed'
        pass += 1.0
      end
      total += 1.0
    end
    ((pass / total) * 100).round(2)

  end



end






# should initialize with first_name
# Student.all should return all of the student instances
# Student#add_boating_test should initialize a new boating test with a student (Object), a boating test name (String),
# a boating test status (String), and an Instructor (Object)
# Student.find_student will take in a student first name and output that student (Object)
# Student#grade_percentage should return the percentage of tests that the student has passed,
#   a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float 33.33)
