class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable
         
  has_many :tweets
  has_many :items
  
  acts_as_followable
  acts_as_follower
  acts_as_voter
end
