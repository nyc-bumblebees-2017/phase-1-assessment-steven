class Order

  attr_reader :customer, :products
  attr_accessor :shipping_address

  def initialize(options={})
    @shipping_address = options.fetch(:shipping_address)
    self.customer = options.fetch(:customer)

    @products = []
  end

  def customer=(customer)
    @customer = customer
    customer.add_orders(self)
  end

  def add_product(product)
    products << product
  end
  
end
