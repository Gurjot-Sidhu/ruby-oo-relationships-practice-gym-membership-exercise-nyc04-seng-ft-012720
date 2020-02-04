# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

tom = Lifter.new("Tom",500)
firuz = Lifter.new("Firuz",500)
abid = Lifter.new("Abid",500)
gurjot = Lifter.new("Gurjot",500)
pano = Lifter.new("Pano",1000)

speed = Gym.new("speed")
strength = Gym.new("strength")
dex = Gym.new("dex")

# tom = Membership.new(200,tom,speed)
# firuzs = Membership.new(210,firuz,strength)
# abids = Membership.new(250,abid,strength)
# gss = Membership.new(275,gurjot,dex)
# gsa = Membership.new(275,gurjot,speed)
# pano = Membership.new(275,pano,dex)



#p gurjot.memberships
#p gurjot.gyms
#p Lifter.avg_lift_total
#p gurjot.total_membership_cost
#binding.pry

tom.new_member(250, dex)

p dex.gym_total_lift

