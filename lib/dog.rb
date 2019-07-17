class Dog
  attr_reader :name, :owner
  attr_accessor :mood

  @@all =[]

  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    @owner.dogs << self
  end

  def add_dog(owner)
    owner.add_dog(self)
  end

  def self.all
    @@all
  end
end
