class Comment < ActiveRecord::Base
  attr_accessible :body, :commenter

  validates :body, :commenter, :presence => true

  belongs_to :post
end
