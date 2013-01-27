class UserUpvote < ActiveRecord::Base
  belongs_to :user
  belongs_to :question

  validates_uniqueness_of :question, :scope => :user
  # attr_accessible :title, :body
end
