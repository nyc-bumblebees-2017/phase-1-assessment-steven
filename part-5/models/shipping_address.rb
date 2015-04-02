class ShippingAddress

  attr_accessor :street, :city, :state, :zip_code, :label, :customer

  def initialize(options={})
    @street = options.fetch(:street)
    @city = options.fetch(:city)
    @state = options.fetch(:state)
    @zip_code = options.fetch(:zip_code)
    @label = options.fetch(:label) # home, work, etc
    @customer = options.fetch(:customer)
  end

end
