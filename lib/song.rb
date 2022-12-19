require 'pry'
class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@genres << genre #take the inputted genre and shovel it into the empty class array
        @@artists << artist #do the same for artists
    end 

    def self.count #class method, lets us get the @@count
        @@count
    end 

    def self.artists 
        @@artists.uniq
    end 

    def self.artist_count #acting on the class as a whole
        artist_count = {}
        @@artists.each do |artist|
          if artist_count[artist]
            artist_count[artist] += 1 
          else
            artist_count[artist] = 1
          end
        end
        artist_count
    
        # with #tally
        # @@artists.tally
      end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count #acting again on the entire class
        genre_count = {}
        @@genres.each do |genre|
            if genre_count[genre] 
                genre_count[genre] += 1
            else 
                genre_count[genre] = 1
            end
        end

        genre_count
        
    end 
end 

binding.pry