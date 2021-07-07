require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# patrick = Student.new("Patrick")
# krabs = Instructor.new("Mr. Krabs")

spongebob = Student.new("Spongebob")
puff = Instructor.new("Ms. Puff")

# puts spongebob
# puts puff

# puts spongebob.name
# puts puff.name

# puts Student.find_student("Spongebob")

# puts spongebob.add_boating_test("Intro 101", "passed", puff)
intro = BoatingTest.new(spongebob, "Intro 101", "passed", puff)
advanced = BoatingTest.new(spongebob, "Advanced 101", "failed", puff)
# puts spongebob.grade_percentage
# puts intro.student
# puts intro.name
# puts intro.status
# puts intro.instructor

test = puff.pass_student(spongebob, "Intro 101")
puts test.name

















# puts spongebob.name == "Spongebob"
# puts patrick.name == "Patrick"
# puts Student.all == [spongebob, patrick]

# puts puff.name == "Ms. Puff"
# puts krabs.name == "Mr. Krabs"
# puts Instructor.all == [puff, krabs]

# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 202", "passed", krabs)
# puts BoatingTest.all == [no_crashing, power_steering_failure, power_steering_pass]
# puts Student.find_student("Patrick") == patrick

# puts patrick.grade_percentage == 50.00
# puts spongebob.grade_percentage == 0.0
# patrick.grade_percentage == 50.00
# puff.pass_student(spongebob, "Don't Crash 101")
# puff.pass_student(patrick, "Good Driving")
# puts spongebob.grade_percentage == 100.00
# puts patrick.grade_percentage == 66.67
# puts BoatingTest.all.count == 4

# puff.fail_student(spongebob, "Don't Crash 101")
# puff.fail_student(patrick, " Not So Good Driving")
# puts spongebob.grade_percentage == 0.00
# puts patrick.grade_percentage == 50.00
# puts BoatingTest.all.count == 5


# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
