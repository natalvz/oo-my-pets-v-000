class Owner

  @@all = []
  attr_accessor :name, :pets, :fishes
  attr_reader :species
  
  def initialize(name)
    @name = name
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
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
    "I am a #{species}."
  end
  
  def buy_fish(fish)
    new_fish = Fish.new(name)
    new_fish_owner = self
    @pets[:fishes] << new_fish
  end
end