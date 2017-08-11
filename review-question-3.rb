# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require "pry"
class User
  attr_accessor :name, :photos

  def initialize(name)
    @name = name
    @photos = []
  end

end

class Photo
  attr_reader :user, :comments

  def initialize
    @comments = []
  end

  def user=(user)
    @user = user
    user.photos << self
  end

  def make_comment(comment)
    @comments << Comment.new(comment)
  end
end

class Comment
  ALL = []

  def initialize(comment_text)
    @text = comment_text
    ALL << self
  end

  def self.all
    ALL
  end
end

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]

photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]

binding.pry
