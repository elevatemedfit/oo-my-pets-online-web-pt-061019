class Owner

attr_reader :species,:name
attr_accessor :owner,:cats,:cat,:dog,:dogs

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

   def self.save
     @@all << self
     #self
   end

  def buy_cat(name,owner)
    cat = Cat.new(name,owner)
    cats << cat
  end


   def self.reset_all
    @@all.clear
  end
end
