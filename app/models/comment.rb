class Comment < ActiveRecord::Base
 
validates :body, :presence => true 
 
belongs_to :activity
  belongs_to :user
end
