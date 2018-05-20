class Tweet < ActiveRecord::Base
  belongs_to :user
  
  validates :user, presence: true
  validates :content, presence: true, length: { maximum: 140 }
end
