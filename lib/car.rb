class Car
  @@all = []
  attr_accessor :owner
  attr_reader :make, :model

  def initialize(make, model, owner=nil)
     @make = make
     @model = model
     @owner = owner
     Car.all << self
  end

  def self.all
    @@all
  end

end
