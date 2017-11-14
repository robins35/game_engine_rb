require "game_engine/version"
require "game_engine/game_window"
require 'pry'

module GameEngine
  def self.init
    window = GameWindow.new
    window.show
  rescue Interrupt => e
    puts "\r Something goes wrong! :("
  end
end

GameEngine.init
