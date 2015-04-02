class Customer

  attr_accessor :first_name, :last_name
  attr_reader :orders, :shipping_addresses

  def initialize(options={})
    @first_name = options.fetch(:first_name)
    @last_name = options.fetch(:last_name)
    @orders = []
    @shipping_addresses = []
  end

end
