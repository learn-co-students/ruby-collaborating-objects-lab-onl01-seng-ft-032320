require "pry"

class Artist
  attr_accessor :name, :artist
    @@all = []
   def initialize(name)

      @name = name
      @@all << self
   end

  def self.all
     @@all
  end

  def add_song(song)
    song.artist = self
  end

  def songs
    Song.all.select {|song| song.artist == self}
    #binding.pry
  end

  def self.find_or_create_by_name
     self.all.fing{|name|self.name == name}
  end
end
