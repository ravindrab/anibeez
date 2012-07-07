class Activity < ActiveRecord::Base
 
validates :query, :presence => true 
 
  belongs_to :user
  has_many :comments, :dependent => :destroy
end
