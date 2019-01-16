# require_relative 'student.rb'
# require_relative 'boatingtest.rb'
require 'pry'

class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def pass_student(name, test_name)
   #binding.pry
    boatingtests = BoatingTest.all
    boatingtests.each do |test|

      if test.student.name == name && test.name == test_name
        test.status = "passed"
        return test
      else
        newtest = BoatingTest.new(Student.new(name),test_name,"passed",self)
        return newtest
      end
    end

  end



end
