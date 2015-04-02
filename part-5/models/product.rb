class Product

  attr_reader :categories

  def initialize(args = {})
    @name = options.fetch(:name)
    @description = options.fetch(:description)
    @categories = []
    @orders = []
  end

  def add_category(category)
    categories << category
  end

  def add_order(order)
    orders << order
  end

end
