class Owner
  
  @@all = []
 
 attr_accessor :pets
 attr_reader :name, :species
 
 def self.all
   @@all 
 end
 
 def self.count 
   @@all.count
 end
 
 def self.reset_all 
   @@all.clear
 end
 
 def initialize(name)
   @name = name
   @species = "human"
   @@all << self
 end
 
 def say_species
   "I am a human."
 end
    
  def cats
    Cat.all.select {|cat| cat.owner == self}
  end
    
  def dogs
    Dog.all.select {|dog| dog.owner == self}
  end
    
  def buy_cat
    
  end
    
    
end