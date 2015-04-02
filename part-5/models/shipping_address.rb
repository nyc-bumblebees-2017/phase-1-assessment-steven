class ShippingAddress

  attr_reader :customer
  attr_accessor :street, :city, :state, :zip_code, :label

  def initialize(options={})
    @street = options.fetch(:street)
    @city = options.fetch(:city)
    @state = options.fetch(:state)
    @zip_code = options.fetch(:zip_code)
    @label = options.fetch(:label) # home, work, etc

    self.customer = options.fetch(:customer)
  end

  def customer=(customer)
    @customer = customer
    customer.add_shipping_address(self)
  end

end
