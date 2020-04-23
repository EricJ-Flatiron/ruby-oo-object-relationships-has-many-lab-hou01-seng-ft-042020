class Post
    require 'Author'
    attr_accessor :title, :author
    @@all = []

    def initialize(t)
        @title = t
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        author.name if author
    end
end