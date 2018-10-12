class Song

  attr_accessor :name, :artist

  def initialize(name, artist)
    @name = name
    @artist = artist
  end

  def new_by_filename(filename)
    components = filename.split(" - ")
    artist = components[0]
    title = components[1]
    Song.new
  end




end
