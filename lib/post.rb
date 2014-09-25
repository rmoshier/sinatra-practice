class Post
 # Access posts which are files within views/posts
 # Attributes:titles, url, filename, content

 # Read my list of post files.
 # Create an array of post objects
 # with the attributes set
 # Posts.all => [post, post]
 # How to test in irb: irb -r ./lib/post.rb
   def initialize(array)

   end

   def self.all #we want a class method that creates instances
     Dir.glob("views/posts/*").collect do |filepath|
       a = filepath.split("/")
       new(a) #same as Post.new and self.new
     end
   end
end
