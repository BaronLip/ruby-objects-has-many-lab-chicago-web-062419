require "pry"

class Author
    attr_accessor :name, :posts, :author

    # Creats an instance of Author with a name instance variable.
    # Creates an empty array to contain posts for that instance of Author.
    def initialize(name)
        @name = name
        @posts = []
    end

    def add_post(post)
        @posts<<post
        post.author = self
    end    
    
    def add_post_by_title(title)
        new_post = Post.new(title)
        @posts<<new_post
        new_post.author = self
    end

    def self.post_count
        Post.all.count
    end
    
end