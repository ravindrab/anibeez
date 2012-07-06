class Link < ActiveRecord::Base
  belongs_to :bookmark
  validates_format_of :url, :with => URI::regexp(%w(http https www))
  validates_length_of :url, :in => 7..32, :allow_blank => true 
  validates :url, :uniqueness => true
end
