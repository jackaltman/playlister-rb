require_relative 'lib/artist'
require_relative 'lib/song'
require_relative 'lib/genre'

# genre1 = Genre.new
# genre1.name = "Rap"

# song1 = Song.new
# song1.name = "Hello"
# song1.artist = "Kanye"
# song1.genre = genre1

# song2 = Song.new
# song2.name = "Brooklyn"
# song2.artist = "JayZ"
# song2.genre = genre1

# artist = Artist.new
# artist.name = "Kanye"


# puts song1.inspect

# puts genre1.songs





# data = Dir.open('data')

# data.each do |song_info|
#   artist_name = song_info.split("-").first.strip
#   song_name = song_info.split("-")[1].split("[").first.strip
#   song_genre = song_info.split("]").first.split("[").last

#   song = Song.new
#   song.name = song_name
#   song.artist = artist_name

#   artist =
# end

### STEPS ###

# 1) Iterate through file and make an array of all the genres
# 2) Create instance of genre class for each of those items if they don't exist
      # 3) Name the new genre instances
# 4) Iterate through file and make an array of all the songs      
      # 5) Create an instance of the song class and assign a name to the new song instance
      # 6) Assign an artist to the song
      # 7) Assign an genre instance to the song
# 8) Iterate through the file and make an array of all the artists
      # 9)  Create an instance of the artist class and assign a name to the new artist instance if the artist doesn't exist
#10) Add songs to the artists if song.artist == artist.name



# 1) Iterate through file and make an array of all the genres

data = Dir.open('data').collect {|x| x } - [".", ".."]
data_genres = []
data.each do |song_info|
  song_genre = song_info.split("]").first.split("[").last
  data_genres << song_genre if !data_genres.include?(song_genre)
end

## Now we have an array of all the unique genres
puts data_genres

# 2) Create instance of genre class for each of those items if they don't exist
# 3) Name the new genre instances

data_genres.each do |genre|
  new_genre = Genre.new
  new_genre.name = genre
end


# 4) Iterate through file and make an array of all the songs
      # 5) Create an instance of the song class and assign a name to the new song instance
      # 6) Assign an artist to the song
      # 7) Assign an genre instance to the song 

song_data = []
data.each do |song_info|
  artist_name = song_info.split("-").first.strip
  song_name = song_info.split("-")[1].split("[").first.strip
  song_genre = song_info.split("]").first.split("[").last
  new_song = Song.new
  new_song.name = song_name
  new_song.artist = artist_name
  Genre.all.each do |genre|
    if genre.name = song_genre
      new_song.genre = genre
    end
  end
end

artist_data = []
data.each do |song_info|
  artist_name = song_info.split("-").first.strip
  artist_data << artist_name if !artist_data.include?(artist_name)
end

artist_data.each do |artist|
  new_artist = Artist.new
  new_artist.name = artist
end


data.each do |song_info|
  artist_name = song_info.split("-").first.strip
  song_name = song_info.split("-")[1].split("[").first.strip
  song_genre = song_info.split("]").first.split("[").last
end










