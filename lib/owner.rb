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
    @pets = {fishes: [], dogs: [], cats: []}
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
  end

  def pets
    @pets
  end
end
