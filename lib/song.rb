require "pry"

class Song
    attr_accessor :name,:artist,:genre
    @@count = 0
    @@genres = []
    @@artists = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        # @@genres << genre unless @@genres.include?(genre)
        @@genres << @genre
        @@artists << @artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        all_genres = self.genres
        genres_counts = {}
        all_genres.each do |genre| 
            genres_counts[genre]=@@genres.count(genre)
        end
        genres_counts
    end

    def self.artist_count
        all_artists = self.artists
        artists_counts = {}
        all_artists.each do |artist| 
            artists_counts[artist]=@@artists.count(artist)
        end
        artists_counts
    end
end

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
# monster = Song.new("MONSTER","Kanye West","rap")
# Song.new("Lucifer", "Jay-Z", "rap")
# Song.new("99 Problems", "Jay-Z", "rap")
# Song.new("hit me baby one more time", "Brittany Spears", "pop")

# binding.pry