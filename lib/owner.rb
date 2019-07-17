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

  def buy_cat(name,owner)
    @cats << Cat.new(name,owner)
  end

   def self.reset_all
    @@all.clear
  end
end
