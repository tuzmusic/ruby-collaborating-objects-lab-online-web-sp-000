require 'pry'

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    x = Dir["#{path}/*.mp3"].each {|x| x.split('/').last}
    binding.pry
    x
  end
end
