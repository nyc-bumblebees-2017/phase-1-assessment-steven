require_relative 'reservations'
require_relative 'maintance'

class WaterBottle
  include Reservations
  include Maintance

  attr_reader :capacity, :material

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 2 }
    @material = args.fetch(:material) { "tin" }
  end
end
