
class Cat
  attr_reader :name, :owner ,:cats
  attr_accessor :mood

  @@all =[]

  def initialize(name,owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    @owner.cat << self
  end

   def self.all
     @@all
   end
end
