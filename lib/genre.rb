class Genre
<<<<<<< HEAD
  attr_accessor :name
=======
  attr_accessor :name, :songs

  def initialize
    self.songs = []
    Song.all.each do |song|
      self.songs << song if self.name == song.genre
    end
  end

>>>>>>> 83ac8a29b39196963ca37d8ef5d1ff8e7470979a
end