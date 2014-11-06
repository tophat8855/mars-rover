module Rover
  class Coordinate
    attr_reader :x, :y

    def initialize(x, y)
      @x = x
      @y = y
    end

    def valid?
      if x >= 0 && y >= 0
        true
      else
        false
      end
    end

  end
end
