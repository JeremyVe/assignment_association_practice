# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Destroying Data.."

data_models = [User, Post, Category, Comment, Tag, UsersPost, PostsTag]
data_models.each do |model|
  model.destroy_all
end

# User.destroy_all
# Post.destroy_all
# Category.destroy_all
# Comment.destroy_all
# Tag.destroy_all
# UsersPosts.destroy_all
# PostsTags.destroy_all

puts 'creating data'

puts 'creating categories'

categories = ["programming", "entertainment", "adventure", "awesome"]

categories.each do |category|
  c = Category.new
  c.name = category
  c.save
end

puts "creating tags"

tags = %w(ruby travel table discover developer share)

tags.each do |tag|
  t = Tag.new
  t.name = tag
  t.save
end


puts "Users..Posts.."

rand(20..30).times do |t|
  u = User.new
  u.name = "user #{t}"
  u.save

  rand(3..5).times do |t|
    p = Post.new
    p.title = "title #{t}"
    p.body = "body body body body body body body"
    p.category_id = Category.all.sample.id
    p.save

    up = UsersPost.new
    up.post_id = p.id
    up.user_id = u.id
    up.save

    pt = PostsTag.new
    pt.post_id = p.id
    pt.tag_id = Tag.all.sample.id
    pt.save
  end
end

puts 'Commenting'

Post.all.each do |post|
  rand(3..5).times do |t|
    c = Comment.new
    c.body = "I'm a comment, #{t + t**2}"
    c.post_id = post.id
    c.user_id = User.all.sample.id
    c.save
  end
end








