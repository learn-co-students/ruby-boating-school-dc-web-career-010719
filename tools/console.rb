require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Data seeding begins here
spongebob = Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)
# End of data seeding


#All tests begin here

  ##Tests for Student class begin here
      #test 1
      if Student.all.collect do |student| student.first_name end == ["Spongebob", "Patrick"]
        puts "test 1 passed!"
      end

      #test 2
      if Student.find_student("Spongebob").first_name == "Spongebob"
        puts "test 2 passed!"
      end

      #test 3
      if patrick.grade_percentage == 50.0
        puts "test 3 passed!"
      end
  ##End of tests for Student class

  ##Tests for Instructor class begin here
      #test 4
      if Instructor.all.collect do |instructor| instructor.name end == ["Ms.Puff", "Mr.Krabs"]
        puts "test 4 passed!"
      end

      #test 5
      if puff.pass_student(spongebob, "Don't Crash 101").status == 'passed'
        puts "test 5 passed!"
      end

      #test 6
      if puff.fail_student(spongebob, "Don't Crash 101").status == 'failed'
        puts "test 6 passed!"
      end
  ##End of tests for Instructor class

  ##Tests for BoatingTest clas begin here
      #test 7
      if BoatingTest.all.collect do |test| test.test_name end == ["Don't Crash 101", "Power Steering 202", "Power Steering 202"]
        puts "test 7 passed!"
      end
  ##End of tests for BoatingTest class
#End of all tests
