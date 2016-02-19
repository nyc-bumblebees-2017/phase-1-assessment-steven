class Customer

  attr_accessor :first_name, :last_name
  attr_reader :shipping_addresses

  def initialize(args = {})
    @first_name = args.fetch(:first_name)
    @last_name = args.fetch(:last_name)
    @shipping_addresses = []
  end

  def add_shipping_address(shipping_address)
    shipping_addresses << shipping_address
  end

end
