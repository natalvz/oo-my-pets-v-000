class Owner

  @@all = []
  attr_accessor :name, :species
  
  def initialize(name)
    @name = name
      @@all << self
    @species = species
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
  
  def species(specie)
    
  end
end