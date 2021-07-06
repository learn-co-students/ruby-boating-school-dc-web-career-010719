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
    existingtest = BoatingTest.all.find do |test|
      test.test_name == test_name && test.student.first_name == student_name
    end
    if existingtest != nil
      existingtest.test_status = "passed"
      return existingtest
    else
      stu = Student.find_student(student_name)
      # newtest = stu.add_boating_test(test_name, "passed", self)
      BoatingTest.new(stu, test_name, "passed", self)
    end
  end

  def fail_student(student_name, test_name)
    existingtest = BoatingTest.all.find do |test|
      test.test_name == test_name && test.student.first_name == student_name
    end
    if existingtest != nil
      existingtest.test_status = "failed"
      return existingtest
    else
      stu = Student.find_student(student_name)
      BoatingTest.new(stu, test_name, "failed", self)
    end
  end

end
