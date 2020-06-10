require 'pry'


class Utilities
  @@all = []

  def initialize
    @@all << self
  end
  def self.all
    @@all
  end
  def self.count
    all.count
  end
  def self.pick_random
    all.sample
  end
  
end


class Organization < Utilities

  def initialize
    super
  end
  



end

Pry.start