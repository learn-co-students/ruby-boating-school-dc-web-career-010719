# require_relative 'boatingtest.rb'
# require_relative './Instructor'
#require_relative 'pry'

class Student

  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    return @@all
  end

  def self.find_student(stringName)
    @@all.each do |inst|
      if inst.name == stringName
        return inst
      end
    end
    return "no student found"
  end

  def grade_percentage
    pass =0
    fail =0

    BoatingTest.all.each do |test|
      if test.student.name == self.name
        ##binding.pry
        if test.status == "passed"
          pass += 1
        elsif test.status == "failed"
          fail += 1
        end
      end
    end
    total = pass + fail
    #binding.pry
    return ((pass/total.to_f)*100).round(2)

  end

end

puts "\n\ntesting create new student\n\n"
matt = Student.new("matthew")
puts matt.class == Student
puts "\nend of testing new student\n\n\n\n\n\n\n"


matt = Student.new("matthew")
fred = Student.new("fred")
alex = Instructor.new("alex")




puts Student.find_student("matthew")
puts Student.find_student("alex")

newtest = BoatingTest.new(matt, "matts test", "passed", alex)
newtest1 = BoatingTest.new(matt, "matts test2", "passed", alex)
newtest2 = BoatingTest.new(matt, "matts test3", "passed", alex)
newtest3 = BoatingTest.new(matt, "matts test4", "failed", alex)
newtest4 = BoatingTest.new(matt, "matts test5", "failed", alex)
newtest5 = BoatingTest.new(matt, "matts test6", "failed", alex)
newtest6 = BoatingTest.new(matt, "matts test7", "failed", alex)
newtest7 = BoatingTest.new(matt, "matts test8", "failed", alex)
newtest8 = BoatingTest.new(matt, "matts test9", "failed", alex)


puts "TEST HERE"
puts newtest3.status

puts alex.pass_student("matthew", "matts test4").status


puts "TEST HERE"

puts "le"
puts Student.find_student("crax")
puts alex.pass_student("crax", "new crax test")
puts Student.find_student("crax")
puts "le"

puts "kjahdkhf"
puts matt.grade_percentage
puts "kjahdkjas"

puts matt.name
puts fred.name
puts Student.all
