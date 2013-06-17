class Artist
  attr_accessor :name, :songs, :genres

  @@artists = []
  

  def initialize
    @@artists << self
    self.songs = []
  end

  def self.reset_artists
    @@artists = []
  end


  def self.all
    @@artists
  end

  def self.count
    @@artists.count
  end

  def songs_count
    self.songs.count
  end

  def add_song(song)
    self.songs << song
  end


end
