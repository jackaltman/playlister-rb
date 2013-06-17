class Song
  attr_accessor :genre

  @@songs = []

  def initialize
    @@songs << self
  end

<<<<<<< HEAD

end
=======
  def self.all
    @@songs
  end


end
>>>>>>> 83ac8a29b39196963ca37d8ef5d1ff8e7470979a
