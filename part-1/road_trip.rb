class RoadTrip
  attr_accessor :name
  attr_reader :segments
  def initialize(args = {})
    @name = args[:name]
    @segments = args[:segments]
  end

  def add_segment(new_segment)
    segments << new_segment
  end

  def total_miles
    total = segments.map { |segment| segment.instance_variable_get(:@miles) }.inject {|sum, miles| sum + miles}
    total
  end

  def average_miles_per_segment
    avg = segments.map { |segment| segment.instance_variable_get(:@miles) }.inject(:+) / segments.size.to_f
    avg 
  end
end
