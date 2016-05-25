class Post < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  belongs_to :category

  has_many :post_authorings, :class_name => "UsersPost",
                             :dependent => :destroy

  has_many :authors, :through => :post_authorings,
                     :source => :user

  has_many :post_taggings, :class_name => "PostsTag",
                           :dependent => :destroy
                           
  has_many :tags, :through => :post_taggings

  accepts_nested_attributes_for :comments,
                                :reject_if => :all_blank,
                                :allow_destroy => true
end
