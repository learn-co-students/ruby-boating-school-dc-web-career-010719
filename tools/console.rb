require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")
puts "Student knows thier name?"
puts patrick.first_name == "Patrick"
puts spongebob.first_name == "Spongebob"

puff = Instructor.new("Mrs. Puff")
puts "Instructor knows their name?"
puts puff.name == "Mrs. Puff"

park = patrick.add_boating_test("Park that shit", "pending", puff)
turn = patrick.add_boating_test("Turn that shit", "pending", puff)
crash = patrick.add_boating_test("Don't crash that shit", "pending", puff)
change = patrick.add_boating_test("Change the fish oil on that shit", "pending", puff)
puts "Boating test .all knows all of its instances?"
puts BoatingTest.all == [park, turn, crash, change]

pass_park = puff.pass_student("Patrick", "Park that shit")
fail_turn = puff.fail_student("Patrick", "Turn that shit")
pass_crash = puff.pass_student("Patrick", "Don't crash that shit")
puts "Instructor can change the status for a student's test?"
puts park.test_status == "passed"
puts turn.test_status == "failed"

fail_new = puff.fail_student("Patrick", "New Test")
puts "If the test doesn't exist, #pass/fail_student makes a test with the correct attributes?"
puts fail_new.test_status == "failed"
puts fail_new.student == patrick
puts fail_new.instructor == puff

puts "student#grade_percentage returns the percentage of tests passing?"
puts patrick.grade_percentage == 40.0
puts spongebob.grade_percentage == 0.0

# binding.pry
0 #leave this here to ensure binding.pry isn't the last line
