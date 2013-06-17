class Artist
  attr_accessor :name, :songs, :genres

  ARTISTS = []

  # Song = ["Song 1", "Song 2"]

  def initialize
    ARTISTS << self
    self.songs = []
    self.genres = []
  end

  def self.reset_artists
    ARTISTS.clear
  end

  def self.all
    ARTISTS
  end

  def self.count
    ARTISTS.count
  end

  def songs_count
    self.songs.count
  end

  def add_song(song)
    self.songs << song
    self.genres << song.genre
  end

end
