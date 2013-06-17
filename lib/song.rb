class Song
  attr_accessor :genre

  @@songs = []

  def initialize
    @@songs << self
  end


end
