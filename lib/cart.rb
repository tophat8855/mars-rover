module Rover
  class Cart
    attr_reader :coordinate, :direction, :plateau

    def initialize (coordinate, direction, plateau)
      @coordinate = coordinate
      @direction = direction
      @plateau = plateau
    end

  end
end
