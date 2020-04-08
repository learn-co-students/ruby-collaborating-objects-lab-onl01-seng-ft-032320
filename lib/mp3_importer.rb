class MP3Importer 
  attr_accessor :path
  
  def initialize(test_music_path)
    @path = test_music_path
  end
  
  def files
    Dir.glob("**/*.mp3").collect{|file|
      file = file.gsub(/^(.*[\\\/])/, "")
    }
  end
  
  def import 
    self.files.each{|filename|
      Song.new_by_filename(filename)
    }
  end
end