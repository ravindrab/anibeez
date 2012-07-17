class Comment < ActiveRecord::Base
 
validates :body, :presence => true 
 
belongs_to :activity
  belongs_to :user
attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
