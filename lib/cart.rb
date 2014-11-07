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

      p @direction
    end
    

  end
end
