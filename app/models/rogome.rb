class Rogome < ActiveRecord::Base
  belongs_to :user
  attr_accessible :description, :title

  has_many :questions

  after_initialize :set_default_status

  def set_default_status
    self.open
  end

  def open
    self.status = 'open'
  end

  def close
    self.status = 'closed'
  end
end
