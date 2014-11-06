require 'spec_helper'

describe Rover::Coordinate do
  describe 'after initialization' do
    it "has an x coordinate" do
      coordinate = Rover::Coordinate.new(1, 3)
      expect(coordinate.x).to be == 1
    end

    it "has an y coordinate" do
      coordinate = Rover::Coordinate.new(1, 3)
      expect(coordinate.y).to be == 3
    end
  end

  describe '#valid?' do
    it "is true when the x and y are greater than or equal to 0" do
      coordinate = Rover::Coordinate.new(1, 1)
      expect(coordinate.valid?).to be == true
    end

    it "is false when the x coordinate is less than 0" do
      coordinate = Rover::Coordinate.new(-1, 1)
      expect(coordinate.valid?).to be == false
    end

    it "is false when the y coordinate is less than 0" do
      coordinate = Rover::Coordinate.new(1, -1)
      expect(coordinate.valid?).to be == false
    end
  end

  it "#east will return a new coordinate with the same y, but an x that is one greater" do
    coordinate = Rover::Coordinate.new(3,3)
    eastern_coordinate = coordinate.east
    expect(eastern_coordinate.x).to be == 4
    expect(eastern_coordinate.y).to be == 3
  end

  it "#west will return a new coordinate with the same y, but an x that is one less" do
    coordinate = Rover::Coordinate.new(3,3)
    western_coordinate = coordinate.west
    expect(western_coordinate.x).to be == 2
    expect(western_coordinate.y).to be == 3
  end

  it "#north will return a new coordinate with one less in the y direction, but an x is same" do
    coordinate = Rover::Coordinate.new(3,3)
    northern_coordinate = coordinate.north
    expect(northern_coordinate.x).to be == 3
    expect(northern_coordinate.y).to be == 2
  end

  it "#south will return a new coordinate with one greater in the y direction, but an x is same" do
    coordinate = Rover::Coordinate.new(3,3)
    southern_coordinate = coordinate.south
    expect(southern_coordinate.x).to be == 3
    expect(southern_coordinate.y).to be == 4
  end

  describe '#==' do
    # look at tests for Card and try to reproduce == tests
    it 'returns true when two coordinates have the same x and y values' do
      coordinate_a = Rover::Coordinate.new(2, 3)
      coordinate_b = Rover::Coordinate.new(2, 3)

      expect(coordinate_a == coordinate_b).to be true
    end

    it 'returns false when two coordinates have different x values and different y values' do
      coordinate_a = Rover::Coordinate.new(2, 3)
      coordinate_b = Rover::Coordinate.new(5, 4)

      expect(coordinate_a == coordinate_b).to be false
    end

    it 'returns false when two coordinates have the same x values and different y values' do
      coordinate_a = Rover::Coordinate.new(2, 3)
      coordinate_b = Rover::Coordinate.new(2, 4)

      expect(coordinate_a == coordinate_b).to be false
    end

    it 'returns false when two coordinates have different x values and the same y values' do
      coordinate_a = Rover::Coordinate.new(2, 3)
      coordinate_b = Rover::Coordinate.new(5, 3)

      expect(coordinate_a == coordinate_b).to be false
    end

  end
end
