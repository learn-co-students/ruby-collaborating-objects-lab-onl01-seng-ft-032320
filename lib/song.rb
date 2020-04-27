require "pry"

class Song
  attr_accessor :name
  attr_reader :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist=(new_artist)
    @artist = new_artist
    new_artist.songs << self
  end

  # self.artist=("some string")

  #def artist
    #@artist
  # end

  #self.artist
  # => "some string"

  def self.new_by_filename(filename)
    song = filename.split(' - ')[1]
    artist = filename.split(" - ")[0]
    new_song = self.new(song)
    new_song.artist_name=(artist)
    new_song
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name) #setter @artist

    self.artist.add_song(self) #@artist getter, refering to the getter method which has an instance of an Artist.

  end
end
