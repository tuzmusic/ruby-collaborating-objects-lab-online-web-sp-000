require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir["#{@path}/*.mp3"].map {|x| x.split('/').last}
  end

  def import
    @files.each_char { |chr|  }
  end

end
