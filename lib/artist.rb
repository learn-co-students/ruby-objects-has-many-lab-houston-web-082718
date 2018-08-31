require 'pry'

class Artist

    attr_reader :name
    attr_accessor :song
    

    @@all = []

    def initialize (name)
        @name = name
        

        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end 
    end

    def add_song (song)
        song.artist = self
    end

    def add_song_by_name (name)
        song = Song.new(name)
        self.add_song(song)
    end

    def self.song_count
        Song.all.length
    end
end
