class Segment

  attr_reader :origin, :destination, :miles

  def initialize(args = {})
    @origin = args.fetch(:origin)
    @destination = args.fetch(:destination)
    @miles = args.fetch(:miles)
  end

end
