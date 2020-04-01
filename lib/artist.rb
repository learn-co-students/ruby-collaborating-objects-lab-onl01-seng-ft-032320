class Artist 
    attr_accessor :name 

    @@all = []
    def initialize (name)
        @name = name
        @@all << self 
    end 

    def self.all 
        @@all
    end 

    def self.find_or_create_by_name(artist_name)
        if Artist.all.select{|artist| artist.name == artist_name}.length == 1
           Artist.all.find{|artist| artist.name == artist_name}
        else 
            artist = Artist.new(artist_name)
        end  
    end  
    
    def print_songs 
        artists_songs = Song.all.select{|song| song.artist == self}
        puts artists_songs.map{|song| song.name}    
    end 

    def add_song(song)
        song.artist = self 
    end 
    
    def songs 
        Song.all.select{|song| song.artist == self}
    end 
end 