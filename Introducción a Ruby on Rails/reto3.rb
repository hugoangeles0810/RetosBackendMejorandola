module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end

  def run
    sleep(10/@velocity)
    puts "Recorri 10 metros"
  end
end
class Rabbit
  include Action
  
  attr_reader :name
  
  def initialize(name, velocity = 1)
    @name = name
    @velocity = velocity
  end
end

class Cricket
  include Action

  attr_reader :name
  
  def initialize(name, velocity = 1)
    @name = name
    @velocity = velocity
  end

  def chirp
    puts "Chirp"*(rand(90) + 10)
  end
end
peter = Rabbit.new("Peter",10)
jiminy = Cricket.new("Jiminy")
peter.run
jiminy.run
jiminy.chirp