module Rover
  class Plateau
    attr_reader :x_coords, :y_coords

    def initialize
      x_coords = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
      y_coords = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

      @plateau = []

      x_coords.each do |x|
        y_coords.each do |y|
          @plateau << Coordinate.new(x, y)
        end
      end
    end

    def coordinates
      @plateau
    end

    def include? coord
      if @plateau.include?(coord)
        true
      else
        false
      end
    end

    def valid_coordinate? coord
      if @plateau.include?(coord)
        true
      else
        false
      end
    end

  end
end
