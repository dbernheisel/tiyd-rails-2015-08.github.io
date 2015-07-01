class Artist
  attr_reader :name, :albums

  def initialize(name)
    @name = name
    @albums = []
  end

  def assign(album)
    @albums << album
  end

  def album_names
    @albums.map &:name
  end
end
