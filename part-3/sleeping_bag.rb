require_relative 'maintance'
require_relative 'reservations'


class SleepingBag
  include Maintance
  include Reservations
  
  attr_reader :style, :size, :shell

  def initialize(args = {})
    @style = args.fetch(:style) { "rectangular" }
    @size = args.fetch(:size) { "adult" }
    @shell = args.fetch(:shell) { "nylon" }
  end
end
