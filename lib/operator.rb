module Rover
  class Operator
    attr_reader :coordinate, :direction, :plateau, :cart

    def initialize(init)
      x = init.split("")[0]
      y = init.split("")[1]
      dir = init.split("")[2]

      compass = {"N" => :north, "E" => :east, "S" => :south, "W" => :west}

      @coordinate = Coordinate.new(x.to_i, y.to_i)
      @direction = compass[dir]
      @plateau = Plateau.new
      @cart = Cart.new(coordinate, direction, plateau)
    end

    def run_command(input)
      run_this = input.split("")
      run_this.each do |command|
        @cart.run_command(command)
      end
    end

    def reset(init)
      Operator.new(init)
    end

  end
end
