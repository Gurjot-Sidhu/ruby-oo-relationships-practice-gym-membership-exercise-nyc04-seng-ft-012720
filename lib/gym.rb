class Gym
  attr_reader :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |memberships|
      memberships.gym == self
    end
  end

  def lifters
    Membership.all.map do |memberships|
      memberships.lifter 
    end
  end

  def lifter_name
    lifters.map do |lift|
      lift.lifter
    end
  end

  def gym_total_lift
    lifters.reduce(0) {|sum, lifter| sum + lifter.lift_total}

  end

end
