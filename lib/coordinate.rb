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

    def east
      Coordinate.new(x + 1, y)
    end

    def west
      Coordinate.new(x - 1, y)
    end

    def north
      Coordinate.new(x, y - 1)
    end

    def south
      Coordinate.new(x, y + 1)
    end

  end
end
