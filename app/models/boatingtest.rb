class BoatingTest

  attr_accessor :student, :name, :status, :instructor

  @@all = []

  def initialize(student, name, status, instructor)
    @student, @name, @status, @instructor = student, name, status, instructor
    @@all << self
  end

  def self.all
    return @@all
  end

end
