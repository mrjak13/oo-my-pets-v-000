require 'pry'

class Owner
  # code goes here
  attr_accessor :name
  attr_reader :species
  @@all =[]

  def initialize(name, species="human")
    @name = name
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    species = self.species
    "I am a #{species}."
    binding.pry
  end
end
