class Artist
  attr_accessor :name, :songs, :genres

<<<<<<< HEAD
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
=======
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
>>>>>>> 83ac8a29b39196963ca37d8ef5d1ff8e7470979a
  end

  def add_song(song)
    self.songs << song
  end


end
