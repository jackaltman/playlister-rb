class Song
  attr_accessor :name, :artist
  attr_reader :genre

  SONGS = []

  def initialize
    SONGS << self
  end

  def self.all
    SONGS
  end

  def genre=(genre)
    @genre = genre
    genre.songs << self
  end

  def self.find_by(name)
    song_search = ""
    SONGS.each do |song|
      if song.name == name
         song_search = song
      end
    end 
    return song_search
  end

end
