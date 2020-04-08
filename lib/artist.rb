class Artist
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def add_song(song)
    song.artist = self
    @songs << song
  end
  
  def self.find_or_create_by_name(name)
    found = self.all.find {|artist| artist.name == name}
    if found
      found
    else
      create_artist = self.new(name)
      create_artist
    end
  end
  
  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
  
  
  
end