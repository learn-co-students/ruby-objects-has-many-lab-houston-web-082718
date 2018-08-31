class Author

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post (post)
        post.author = self
    end

    def add_post_by_title (post)
        p = Post.new(post)
        p.author = self
    end

    def self.post_count
        Post.all.length
    end
end