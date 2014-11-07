module Rover
  class Cart
    attr_reader :coordinate, :direction, :plateau

    def initialize (coordinate, direction, plateau)
      @coordinate = coordinate
      @direction = direction
      @plateau = plateau
    end

    def rotate(spin)
      compass_rose = [:north, :east, :south, :west]
      location = compass_rose.find_index(@direction)

      if spin == "R"
        @direction = compass_rose.rotate[location]
      elsif spin == "L"
        @direction = compass_rose.rotate(-1)[location]
      end
    end

    def move
      case direction

      when :east
        new_coord = @coordinate.east
      when :north
        new_coord = @coordinate.north
      when :south
        new_coord = @coordinate.south
      when :west
        new_coord = @coordinate.west
      end

      if new_coord.valid?
        @coordinate = new_coord
        true
      else
        false
      end

    end

  end
end
