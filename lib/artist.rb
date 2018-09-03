class Artist

    attr_reader :name
    attr_accessor :songs

    def initialize(name)
        @name = name
        @songs = []
    end

    def add_song(song_instance)
        @songs << song_instance
        song_instance.artist = self
    end

    def add_song_by_name(song_name)
        song_instance = Song.new(song_name)
        add_song(song_instance)
        song_instance
    end

    def self.song_count
        Song.all.count
    end

end