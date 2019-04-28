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

  # def test_mine?(test)
  #   test.instructor == self
  # end

  def check_and_alter_tests(student, test_name, status)
    existing_test = (BoatingTest.test_exists?(student, test_name))
    if existing_test.nil?
      BoatingTest.new(student, test_name, status, self)
    # elsif self.test_mine?(existing_test)
    #   existing_test.status = status
    else
      existing_test.status = status
      existing_test
    end
  end

  def pass_student(student, test_name)
    check_and_alter_tests(student, test_name, "passed")
  end

  def fail_student(student, test_name)
    check_and_alter_tests(student, test_name, "failed")
  end

end
