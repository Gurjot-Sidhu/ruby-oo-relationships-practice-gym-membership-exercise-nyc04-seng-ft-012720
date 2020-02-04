class Lifter

  attr_reader :name, :lift_total

  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def self.all
    @@all
  end

  def memberships
    Membership.all.select do |membership|
      membership.lifter == self
    end
  end

  def gyms
    Membership.all.select do |membership|
      if membership.lifter == self
         membership.gym
      end
    end
  end

  def self.avg_lift_total
    sum = self.all.reduce(0) {|sum,lifter| sum + lifter.lift_total}
    sum/self.all.length
  end

  def total_membership_cost
    totalcost = 0
    Membership.all.select do |membership|
      if membership.lifter == self
          totalcost += membership.cost
      end
    end
    totalcost
  end

  def new_member(cost, gym)
    Membership.new(cost, self, gym)
  end

end
