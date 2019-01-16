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

  def pass_student(first_name, test_name)
    BoatingTest.all.each do |test|
      if test.student.first_name == student && test.test_name == test_name
        test.status = "passed"
      else
        BoatingTest.new(first_name, test_name, "passed", self)
    end
  end

  def fail_student(first_name, test_name)
    test_to_fail = BoatingTest.all.find {|test|
       test.student.first_name == first_name && test.test_name == test_name
        }
        test_to_fail.test_status = "failed"
      end
    end


end
