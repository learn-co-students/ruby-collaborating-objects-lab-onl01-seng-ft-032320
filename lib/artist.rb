require "pry"
class Artist
  attr_accessor :name, :songs
  
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    save
  end
  
   def self.all
    @@all 
  end
  
  def add_song(song)
    @songs << song
  end
  
  def save
    @@all << self
  end
  
  def songs
    @songs
  end
  
 
  #["Beyonce","Whitney","Troop"]
  def self.find_or_create_by_name(name)
   
   
    artist = self.all.find do |singer| 
      
       singer.name == name
    end
    if artist == nil
      Artist.new(name)
    else
      artist
    end
 end
  
  
  def print_songs
    self.songs.each { |song| puts song.name }
  
  end
  
end