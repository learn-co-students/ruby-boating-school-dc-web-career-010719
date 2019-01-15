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

  def pass_student(student, test_name)
    if BoatingTest.all.find_index {|test| test.test_name == test_name}
      index = BoatingTest.all.find_index {|test| test.test_name == test_name}
      BoatingTest.all[index].test_status = "passed"
    else
      self.create_test(student, test_name, "passed")
    end
  end

  def fail_student(student ,test_name)
    if BoatingTest.all.find_index {|test| test.student == student && test.test_name == test_name && test.instructor == self}
      index = BoatingTest.all.find_index {|test| test.student == student && test.test_name == test_name && test.instructor == self}
      BoatingTest.all[index].test_status = "failed"
    else
      self.create_test(student, test_name, "failed")
    end
  end

  def create_test(student, test_name, test_status)
    BoatingTest.new(student, test_name, test_status, self)
  end

end
