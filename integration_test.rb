# List all Users, Comments, Posts, Categories or Tags.
  User.all
  Comment.all
  Post.all
  Category.all
  Tag.all

# List a given user's comments
  u = User.first
  u.comments

# Set a comment to belong to a different user
  c = Comment.first
  c.user = User.first

# Set a post to be in a different category
  p = Post.first
  p.category = Category.all.sample

# Set a collection of comments to replace a user's current comments (e.g. User.first.comments = [Comment.first, Comment.second])
    u = User.first
    u.comments = [Comment.first, Comment.second]

# Return a given comment's author
  c = Comment.all.sample
  c.user

# List a given post's comments
  p = Post.first
  p.comments

# Return a given comment's parent post
  c = Comment.first
  c.post

# Remove one post from a category's collection of posts
  c = Category.first
  c.posts.delete(c.posts.last)

# List the posts authored by a given user
  u = User.first
  u.posts

# List the IDs of all posts authored by a given user (hint: there's an association method for this)
  u = User.first
  u.post_ids

# Set a collection of Posts to replace that user's currently authored posts, e.g. User.first.posts = [Post.first, Post.second]
  u = User.first
  u.posts = [Post.first, Post.second]

# List the authors of a given post
  p = Post.first
  p.users

# Set a collection of Users to replace a given Post's authors in a similar way
  p = Post.first
  p.users = [User.first, User.second]

# Accomplish the same thing by only using IDs (hint: there's an association method for this...)
  p = Post.first
  p.user_ids = [User.first.id, User.second.id]

# List the posts under a given tag
  t = Tag.new
  t.posts

# Add a new post to a given tag by only using its ID
  t = Tag.new
  t.post_ids << Post.first.id

# Add a new tag to a given post by only using its ID
  p = Post.first
  p.tag_ids = Tag.all.sample.id

# List the tags on a given post
  p = Post.first
  p.tags















