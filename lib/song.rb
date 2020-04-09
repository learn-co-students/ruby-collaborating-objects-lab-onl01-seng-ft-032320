class Song 
  @@all = []
  
  # attr_accessor :title, :artist 
  
  # def self.new_by_filename(filename)
  #   song = self.new 
  #   song.title = filename.split(" - ")[1]
  #   song.artist = filename.split(" - ")[0]
  #   song
  # end
  
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name = artist
    new_song
    
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  def self.all 
    @@all 
  end
  
end