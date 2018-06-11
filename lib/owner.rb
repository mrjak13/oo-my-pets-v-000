class Owner
  # code goes here
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def reset_all
    @@all.clear
  end
end
