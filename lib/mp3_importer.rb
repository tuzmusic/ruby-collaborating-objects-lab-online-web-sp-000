require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    dir = Dir[@path]
    binding.pry
  end
end
