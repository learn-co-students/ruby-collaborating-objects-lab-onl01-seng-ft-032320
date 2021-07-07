class Artist 
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
  def add_song(name)
    @songs << name
  end
  
  def self.find_or_create_by_name(name)
    found_artist = self.all.find do |artist|
      artist.name == name
    end
    if found_artist
      found_artist
    else 
      new_artist = Artist.new(name)
    end
  end
  
  def songs 
    @songs
  end
  
  def print_songs
      @songs.each do |song|
        puts song.name
      end
  end
  
end