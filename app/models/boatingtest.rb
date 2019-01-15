class BoatingTest

  attr_reader :student, :test_name, :instructor
  attr_accessor :status
  @@all = []

  def initialize(student, test_name, status, instructor)
    @student = student
    @test_name = test_name
    @status = status
    @instructor = instructor
    @@all << self
  end

  def self.all
    @@all
  end

  def self.test_exists?(student, test_name)
    self.all.find do |test|
      test.test_name == test_name && test.student == student
    end
  end

end
