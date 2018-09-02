class Artist

attr_accessor :name, :songs

@@all = []

def initialize(name)
  @name = name
  @songs = []
  @@all << self
end

def add_song(song)
  song.artist = self
  self.songs << song
end

def add_song_by_name(song_name)
  new_song = Song.new(song_name)
  self.add_song(new_song)
end

def self.all
  @@all
end

def self.song_count
  count = 0
  @@all.each do |artist|
    count += artist.songs.size
  end
  count
end

end
