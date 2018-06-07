class Owner

  @@all = []
  attr_accessor :name, :pets, :fishes, :cats, :dogs
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
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    new_fish_owner = self
    @pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    new_cat_owner = self
    @pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    new_dog_owner = self
    @pets[:dogs] << new_dog
  end
  
  def walk_dogs
    pets[:dogs].mood = "happy"
  end
end