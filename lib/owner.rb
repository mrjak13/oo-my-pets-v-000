class Owner
  # code goes here
  attr_accessor :name
  @@all =[]

  def initialize(name)
    @name = name
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def reset
    @@all.clear
  end
end
