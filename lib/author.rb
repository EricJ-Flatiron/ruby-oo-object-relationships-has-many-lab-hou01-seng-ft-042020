class Author
    attr_accessor :name
    @@all = []

    def initialize(n)
        @name = n
    end

    def self.all
        @all
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(n)
        post = Post.new(n)
        post.author = self
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def self.post_count
        Post.all.count
    end
end