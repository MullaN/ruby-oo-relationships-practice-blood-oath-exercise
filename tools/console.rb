require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("Cult 1", "Random Town", 2020, "This is our slogan")
c2 = Cult.new("Cult 2", "Random Town", 2020, "We're number 2!")
c3 = Cult.new("Cult 3", "Townsylvania", 2020, "Join the third side.")

f1 = Follower.new("Beavis", 16, "heheheh")
f2 = Follower.new("Butthead", 17, "uhuhuh")

c1.recruit_follower(f1)
f2.join_cult(c1)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits