class SuperHero
  attr_accessor :name, :power, :bio

  def initialize(args={})
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    self.save
  end

  def self.all
    @@all ||= []
  end

  def save
    self.class.all << self
  end
end
