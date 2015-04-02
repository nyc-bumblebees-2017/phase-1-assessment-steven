class Order

  attr_reader :customer, :products
  attr_accessor :shipping_address

  def initialize(options={})
    @shipping_address = options.fetch(:shipping_address)
    @products = []

    self.customer = options.fetch(:customer)
  end

  def customer=(customer)
    @customer = customer
    customer.add_order(self)
  end

  def add_product(product)
    products << product
    product.add_order(self)
  end

end
