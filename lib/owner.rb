class Owner

attr_reader :species,:name
attr_accessor :owner,:cats,:dogs

@@all = []


  def initialize(name)
    @species = "human"
    @name = name
    @@all << self
    @cats = []
    @dogs = []
  end

  def self.count
    @@all.length
  end

   def say_species
     "I am a #{@species}."
   end

  def self.all
    @@all
  end

  def buy_cat(name)
    new_cat = Cat.new(name,self)
    new_cat #look at class relationship gets rid of redundantcy
  end

  def buy_dog(name)
    new_dog = Dog.new(name,self)
    new_dog #look at class relationship gets rid of redundantcy
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end

  def sell_pets
    @dogs.each do |dog|
      dog.mood = "nervous"
      dog.owner = nil
    end
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil
    end
    @dogs.clear
    @cats.clear
  end


   def self.reset_all
    @@all.clear
  end
end
