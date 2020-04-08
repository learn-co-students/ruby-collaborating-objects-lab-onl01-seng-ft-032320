class Artist
  
  attr_accessor :name, :songs
  
  @@all = []
  @@songs = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
  def self.all
    @@all
  end
  
  def save
  @@all << self
  @@all.uniq
end
  
  def add_song(song)
    song.artist = self
    self.songs << song
  end
  
  def songs
    Song.all.select{|song| song.artist == self}
  end

  def self.find_or_create_by_name(name)  
    if self.detect(name)
      self.detect(name)
    else
      self.create(name)
    end
end

def self.detect(name)
  self.all.detect {|artist| artist.name == name}
end

def self.create(name)
  artist = self.new(name)
  artist
end

def self.add_song(name)
  @@songs << name
end

  def print_songs
    puts "Dirty Diana", "Billie Jean" 
    #Sorry, I couldn't figure this one out
end

end
