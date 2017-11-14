require "gosu"
require "pry"
require "game_engine/entities/rectangle"

class GameWindow < Gosu::Window
  def initialize
    super (ENV['w'] || 800).to_i,
          (ENV['h'] || 600).to_i,
          (ENV['fs'] ? true : false)

    self.caption = "Game Engine Experiment"

    @bg_color = Gosu::Color.rgba 128, 128, 128, 255
    @bg_text = Gosu::Image.from_text('Suh ##Neko', 60, font: Gosu.default_font_name)

    @sprites = [Rectangle.new(200, 200, 64, 64, back)]
  end

  def update

  end

  def draw
    Gosu.draw_rect 0, 0, width, height, @bg_color
    @sprites.each(&:draw)
  end
end
