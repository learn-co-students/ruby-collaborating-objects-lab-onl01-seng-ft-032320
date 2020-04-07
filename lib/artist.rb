require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all = []


  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
    end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    # binding.pry
    artist  = @@all.find do |artist|
                    artist.name == name
                  end
        if artist == nil
          artist = Artist.new(name)
        else
          artist
        end

  end

  def songs

    Song.all.select do |song|
      song.artist == self
      # song.name ==
    end
  end

  def add_song(song)
    # binding.pry
    song.artist = self
  end

  def print_songs
    self.songs.each {|song| puts song.name}
  end


end
