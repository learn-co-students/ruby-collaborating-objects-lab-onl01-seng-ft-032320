class Song
  attr_accessor :name, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

#Cretes new song based on file_name from MP3Import Class
  def self.new_by_filename(file_name)
    song = self.new(file_name) #Creates new song and uses file_name from MP3Import
    song.name = file_name.split(" - ")[1] #Sets song name via file_name split
    #Uses .artist_name to set self.artist equal to artist name from file_name
    song.artist_name = file_name.split(" - ")[0]
    song
  end

  def artist_name=(name) #Used in self.new_by_filename
    #Creates new artist based on whether it is a duplicate or not (via Artist Class)
      self.artist = Artist.find_or_create_by_name(name)
  end

end
