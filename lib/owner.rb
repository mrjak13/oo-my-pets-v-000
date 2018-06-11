require 'pry'

class Owner
  # code goes here
  attr_accessor :name, :pets
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

  def buy_fish(fish)
    fish = Fish.new(fish)
    pets[:fishes] << fish
  end

  def buy_cat(cat)
    cat = Cat.new(cat)
    pets[:cats] << cat
  end

  def buy_dog(dog)
    dog = Dog.new(dog)
    pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].each {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].each {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].each {|fish| fish.mood = "happy"}
  end

  def sell_pets
    binding.pry
    pets.each {|animal, pet| animal[pet].mood = "nervous"}
    pets.each_value {|pet| pet.clear}

  end

end
