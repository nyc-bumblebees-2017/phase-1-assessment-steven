class Artist
  attr_reader :name, :artworks

  def initialize(args = {})
    @name = args.fetch(:name)
    @artworks = []
  end

  def add_artwork(song)
    artworks << artwork
  end

end