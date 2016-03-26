class Medium
  attr_accessor :name, :description
  attr_reader :artworks

  def initialize(args = {})
    @name = args.fetch(:name)
    @description = args.fetch(:descriptions)
    @artworks = []
  end

  def add_artworks(artwork)
    artworks << artwork
  end
end