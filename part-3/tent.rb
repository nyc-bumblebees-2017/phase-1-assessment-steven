require_relative 'maintance'
require_relative 'reservations'

class Tent
  include Maintance
  include Reservations
  
  attr_reader :capacity

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 3 }
  end
end
