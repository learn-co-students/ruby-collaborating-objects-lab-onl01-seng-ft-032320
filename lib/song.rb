class Song
  attr_accessor :name, :artist
  @@all = []
  @@song_names = ["test"]
  
  def initialize(name)   #runs each time a new instance of this class is made
    @name = name         # tells the instance whats its own name is
    @@all << self        # the instance will shovel itsself into the class variable (@@all) when made so that we can keep track of a list of songs made
    
  end
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  
  
  
  def self.all           # allows the use of the 'song.all' argument to display all the songs made
    @@all
  end
  
  def self.new_by_filename(file)
    song_info = file.chomp(".mp3").split(" - ")
    song = Song.new(song_info[1])
    song.artist_name = song_info[0]
    @@song_names << song
    song
  end
  
  def name
    @name
  end
  
  def self.song_names
    @@song_names.uniq
  end
  
  
end