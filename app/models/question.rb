class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :rogome
  attr_accessible :content
  has_many :user_upvotes
end
