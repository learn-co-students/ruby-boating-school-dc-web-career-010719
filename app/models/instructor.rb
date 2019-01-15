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
    test = BoatingTest.all.find do |test|
      test.name == test_name
    end
    if test
      student = test.student
      if student.first_name == student_name
        test.status = 'passed'
      end
    else
      test = BoatingTest.new(Student.find_student(student_name), test_name, 'passed', self)
      Student.find_student(student_name).boating_tests << test
    end
    test
  end

  def fail_student(student_name, test_name)
    test = BoatingTest.all.find do |test|
      test.name == test_name
    end
    if test
      student = test.student
      if student.first_name == student_name
        test.status = 'failed'
      end
    else
      test = BoatingTest.new(Student.find_student(student_name), test_name, 'failed', self)
      Student.find_student(student_name).boating_tests << test
    end
    test
  end

end
