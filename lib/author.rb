class Author

attr_accessor :name, :posts

@@all = []

def initialize(name)
  @name = name
  @posts = []
  @@all << self
end

def add_post(post)
  post.author = self
  self.posts << post
end

def add_post_by_title(title)
  new_post = Post.new(title)
  self.add_post(new_post)
end

def self.post_count
  count = 0
  @@all.each do |author|
    count += author.posts.size
  end
  count 
end

end
