class Artist
  attr_accessor :name

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
  
  def songs
    @songs
  end

  
  def self.find_or_create_by_name(artist_name)
    found_artist = ""
    @@all.each do |name_object|
      if name_object.name == artist_name
        found_artist = name_object
      else
      end
    end
    if found_artist == ""
      new_artist = self.new(artist_name)
      new_artist
    else
      found_artist
    end
  end

  def print_songs
    @songs.each do |song|
    puts song.name
    end
  end
  
  
  
end