class Owner

  @@all = []
  attr_accessor :name
  attr_reader :species
  
  def initialize(name)
    @name = name
      @@all << self
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
end