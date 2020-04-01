require 'pry'
require_relative './song.rb'
require_relative './mp3_importer.rb'
require_relative './artist.rb'

beatles = Artist.new("The Beatles")
hard_day = Song.new("A Hard Day's Night")
let_it_be = Song.new("Let it Be")

binding.pry
