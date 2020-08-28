require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Cult.new("Cult 1", "Random Town", 2020, "This is our slogan")

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits