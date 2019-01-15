class Instructor

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(student_name, test_name)
    student_object = Student.find_student(student_name)
    active_test = nil
    BoatingTest.all.each do |test|
      if test.test_name == test_name && test.student == student_object
        test.test_status = 'passed'
        return test
      end
    end
    if active_test.nil?
      return student_object.add_boating_test(test_name, 'passed', self)
    end
  end

  def fail_student(student_name, test_name)

    student_object = Student.find_student(student_name)
    active_test = BoatingTest.all.find { |test| test.test_name == test_name && test.student == student_object}
    if !active_test.nil?
      active_test.test_status = 'failed'
      return active_test
    else
      return student_object.add_boating_test(test_name, 'failed', self)
    end

  end




end


# init with name
# return all instructors
# Instructor#pass_student should take in a student name and test name. If there is a BoatingTest whose name and
# student name match the names passed in, this method should update that BoatingTest status to 'passed'. If there is no matching
# test, this method should create a test with a student with that name, that boat test name, and the status 'passed'. Either
# way, it should return the BoatingTest instance.
# Instructor#fail_student should take in a student name and test name. Like #pass_student, it should try to find a
# matching BoatingTest and update its status to 'failed'. If it cannot find an existing BoatingTest, it should create one with the
# name, the matching student, and the status 'failed'.
