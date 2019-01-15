require 'bundler/setup'
Bundler.require
require_all 'app'


spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")
no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
fine = spongebob.add_boating_test("Don't Crash 202", "passed", puff)
power_steering_failure = patrick.add_boating_test("Power Steering 202", "pending", puff)
power_steering_pass = patrick.add_boating_test("Power Steering 204", "passed", krabs)

puts spongebob.name == "Spongebob"
puts patrick.name == "Patrick"
puts puff.name == "Ms.Puff"
puts krabs.name == "Mr.Krabs"
# binding.pry
puts no_crashing.status == "pending"
puts Student.find_student("Spongebob") == spongebob
puts spongebob.grade_percentage
puts puff.pass_student("Spongebob", "Don't Crash 105")
puts puff.fail_student("Patrick" , "Power Steering 202")
