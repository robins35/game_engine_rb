require "gosu"
require "pry"
require "game_engine/entities/entity"

class Rectangle < Entity
  def initialize(x, y, width, height, options = {})
    super x, y, options
    @width = width
    @height = height

    @background_type = options[:background_type]

    @background_image = Gosu::Image.new(options[:background_image]) if options[:background_image]
    @background_color = options[:background_color]
  end

  def draw
    if @background_image.present?
      @background_image.draw(@x, @y, @z)
    else
      Gosu.draw_rect @x, @y, @width, @height, @background_color, @z
    end
  end
end
