class Owner

  @@all = []
  attr_accessor :name, :pets, :fish
  attr_reader :species
  
  def initialize(name)
    @name = name
      @@all << self
    @species = "human"
    @pets = {fishes: [], cats: [], dogs: []}
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
    new_fish =  
end