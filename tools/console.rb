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
f3 = Follower.new("Ed", 16, "buttered toast")
f4 = Follower.new("Edd", 17, "well actually")
f5 = Follower.new("Eddy", 16, "we're going to be ritch")
f6 = Follower.new("frodo", 17, "i will take the ring")
f7 = Follower.new("sam", 16, "if i take one more step")
f8 = Follower.new("gandalf", 17, "you shall not pass")
f9 = Follower.new("lando", 16, "i like milk")
f10 = Follower.new("lewis", 17, "my tyres are gone")
f11 = Follower.new("seb", 16, "sbinnala")
f12 = Follower.new("grosjean", 17, "sorry guys, i've gone off")


c1.recruit_follower(f1)
f2.join_cult(c1)
f2.join_cult(c2)
f3.join_cult(c1)
f3.join_cult(c2)
f3.join_cult(c3)
f4.join_cult(c1)
f5.join_cult(c2)
c3.recruit_follower(f6)
c3.recruit_follower(f7)
c3.recruit_follower(f8)
c3.recruit_follower(f9)
f9.join_cult(c2)
c2.recruit_follower(f10)
f11.join_cult(c3)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits