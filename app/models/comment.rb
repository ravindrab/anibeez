class Comment < ActiveRecord::Base
  belongs_to :Activity
  belongs_to :user


has_many :users
end
