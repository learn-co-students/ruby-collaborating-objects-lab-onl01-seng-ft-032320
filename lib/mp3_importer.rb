require "pry"

class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end
  
  def files
    @file = Dir.glob("#{@path}/*.mp3")
    @file.map do |file_str|
      file_str.gsub("#{@path}/", "")
    end
  end
  
  def import
    self.files.each do |file|
      Song.new_by_filename(file)
    end
  end
end