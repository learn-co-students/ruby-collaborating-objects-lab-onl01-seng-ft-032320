class MP3Importer
  attr_accessor :path, :files
  
  def initialize(path)
    @path = path
  end
  
  def files
    @files = Dir.entries(@path).grep(/.mp3/)
  end
  
  def import
    files.each do |song|
      Song.new_by_filename(song)
    end
  end 
end