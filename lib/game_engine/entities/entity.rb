require "gosu"
require "pry"

class Entity
  def initialize(x, y, options = {})
    @x = x
    @y = y
    @z = options[:z]
  end
end
