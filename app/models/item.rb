class Item < ActiveRecord::Base
  belongs_to :user
  
  validates :user, presence: true
  
  acts_as_votable
end
