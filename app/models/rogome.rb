class Rogome < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title

  has_many :questions
end
