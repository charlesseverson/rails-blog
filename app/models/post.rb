class Post < ActiveRecord::Base
  attr_accessible :content, :name, :title, :tags_attributes

  validates :name, :title, :content, :presence => true
  validates :title, :uniqueness => true
  validates :content, :length => { :minimum => 5 }

  has_many :comments, :dependent => :destroy
  has_many :tags, :dependent => :destroy

  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
