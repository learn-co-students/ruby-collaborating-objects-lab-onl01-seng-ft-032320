class Artist
  attr_accessor :name, :songs
  
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    
    
  end
  
  def songs
    Song.all.select do |song| song.artist == self
  end
  end
  
  def self.all
    @@all
  end
  
  def self.find_or_create_by_name(name)
   if self.name == name
     return self.name
   else 
     @@all << Artist.new(name)
   end
   end
  
  def print_songs
   puts Song.all.each do |tune| puts tune
  end
  end
end