class Segment

  attr_reader :origin, :destination, :miles

  def initialize(options={})
    @origin = options.fetch(:origin)
    @destination = options.fetch(:destination)
    @miles = options.fetch(:miles)
  end

end