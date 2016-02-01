class Order

  attr_reader :customer, :products
  attr_accessor :shipping_address

  def initialize(args = {})
    @shipping_address = args.fetch(:shipping_address)
    @products = []
  end

  def add_product(product)
    products << product
    product.add_order(self)
  end

end
