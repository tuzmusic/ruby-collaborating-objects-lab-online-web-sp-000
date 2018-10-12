class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

end

def self.find_or_create_by_name(name)
  # if @@all contains the artist, return it
  # if not, create it

  existing_artist = @@all.find { |artist|
    artist.name == name
  }
  return existing_artist if existing_artist

  Artist.new(name)

end
