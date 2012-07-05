class Link < ActiveRecord::Base
  belongs_to :bookmark
  validates_format_of :url, :with => URI::regexp(%w(http https))
  
  validates :url, :uniqueness => true
end
