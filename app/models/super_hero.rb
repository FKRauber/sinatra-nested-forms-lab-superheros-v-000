class SuperHero
  attr_accessor :name, :power, :biography

  def initialize(args={})
    @name = args[:name]
    @power = args[:power]
    @biography = args[:biography]
    self.save
  end

  def self.all
    @@all ||= []
  end

  def save
    self.class.all << self
  end
end
