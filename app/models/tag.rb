class Tag < ActiveRecord::Base
  attr_accessible :name

  validates :name, :presence => true, :uniqueness => { :scope => :post_id }

  belongs_to :post
end
