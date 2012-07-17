class Bookmark < ActiveRecord::Base

attr_accessible :name
 
  has_many :links
attr_accessible :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "10x10>" }
end
