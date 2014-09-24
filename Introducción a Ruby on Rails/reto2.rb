class Dessert
  @@counter = 0

  def initialize(name, calories, size = 0)
    @name = name
    @calories = calories
    @size = 0
    @@counter += 1
  end

  attr_accessor :name
  attr_accessor :calories
  
  def healthy?
    @calories<200
  end
  
  def delicious?
    true
  end
  
  def to_s
    @name
  end

  def self.count
    @@counter
  end
end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
    super
    @flavor = flavor
  end

  attr_accessor :flavor

  def delicious?
    @flavor!="black licorice"
  end
end
