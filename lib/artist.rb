class Artist
attr_accessor :name

@@all = []

    def initialize(name)
        @name = name
        @@all << self
        @songs =[]
    end

    def self.all
        @@all
    end

    def add_song(song)
        @songs << song
    end

    def songs
        @songs
    end

    def self.find_or_create_by_name (artist_name)
        found_artist = self.all.find {|artist| artist.name == artist_name}
    if found_artist
      found_artist
    else
      self.new(artist_name)
      
    end
    end

    def print_songs
        @songs.each do |song|
            puts song.name
        end
    end
end