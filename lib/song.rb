class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def new_by_filename(filename)
    components = filename.split(" - ")
    artist = components[0]
    title = components[1]
    song = Song.new(title)
    song.artist = Artist.find_or_create_by_name(artist)
  end




end
