class Question < ActiveRecord::Base
  belongs_to :user
  belongs_to :rogome
  attr_accessible :content
end
