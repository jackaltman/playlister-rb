class Genre
  attr_accessor :name, :songs

  def initialize
    self.songs = []
    Song.all.each do |song|
      self.songs << song if self.name == song.genre
    end
  end

end