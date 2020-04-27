class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = [] ## goes here cause a artist can hold many songs so an instance of Artist can hold many instances of songs
  end

  def self.all
    @@all
  end



  # def songs
  #   Song.all.select { |song| song.artist == self}
  # end

  def add_song(song)
    song.artist = self
  end

  def self.find_or_create_by_name(name)
    found_artist = self.all.find {|artist| artist.name == name}

    if found_artist # if the artist instance exist find the artist
        found_artist
    else
        new_artist = self.new(name)
        new_artist
    end
  end

  def print_songs # this are songs that are bing created by the Song class
    self.songs.each { |song| puts song.name}
  end

end 
