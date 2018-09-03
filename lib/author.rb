class Author

    attr_reader :name
    attr_accessor :posts

    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post_instance)
        @posts << post_instance
        post_instance.author = self
    end

    def add_post_by_title(post_title)
        post_instance = Post.new(post_title)
        add_post(post_instance)
        post_instance
    end

    def self.post_count
        Song.all.count
    end

end