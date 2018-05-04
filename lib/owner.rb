require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all_owners =[]


  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @@all_owners << self
    @species = "human"

  end

  def self.all
    @@all_owners
  end

  def self.reset_all
    @@all_owners.clear
  end

  def self.count
    @@all_owners.size
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(fish_name)
  new_fish =  Fish.new(fish_name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].each{|dog|
    dog.mood = "happy"}
  end

  def play_with_cats
    @pets[:cats].each{|cat|
    cat.mood = "happy"}
  end

  def feed_fish
    @pets[:fishes].each{|fish|
    fish.mood ="happy"}
  end

  def sell_pets
    @pets.each{|type_of_pet, pet_array|
      pet_array.each{|pet|
        binding.pry
        pet.mood ="nervous"
        }pet_array.clear}
  end

  def list_pets
    "I have #{@pets[:fishes].size} fish, #{@pets[:dogs].size} dog(s), and #{@pets[:cats].size} cat(s)."
  end

end
