class Post
 # Access posts which are files within views/posts
 # Attributes:titles, url, filename, content

 # Read my list of post files.
 # Create an array of post objects
 # with the attributes set
 # Posts.all => [post, post]
 # How to test in irb: irb -r ./lib/post.rb
   attr_accessor :title, :url

   def initialize(array)
      @title = array[-1].split(".")[0] #this is basically your title
      @date = Date.parse(array[-2])
      @post_date = array[-2]
      @url   = "/posts/#{@post_date}/#{@title}"
   end

   def self.all #we want a class method that creates instances
     Dir.glob("views/posts/*/*").collect do |filepath|
       a = filepath.split("/")
       new(a) #same as Post.new and self.new
     end
   end

   def self.most_recent(n)
     all.pop(n)
   end
end
