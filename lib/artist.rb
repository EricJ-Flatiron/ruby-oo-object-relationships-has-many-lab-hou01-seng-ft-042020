class Artist

    attr_accessor :name
    @@all = []

    def initialize(n)
        @name = n
    end

    def self.all
        @all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(n)
        song = Song.new(n)
        song.artist = self
    end

    def songs
        Song.all.select do |song|
            song.artist == self
        end
    end

    def self.song_count
        Song.all.count
    end

end