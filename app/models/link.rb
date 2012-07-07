class Link < ActiveRecord::Base
  belongs_to :bookmark
  #validates_format_of :url, :with => URI::regexp(%w(http|https ))
  validates :url, :description, :presence => {:message => ' cannot be blank.'}, :allow_blank => true, :length => {:minimum => 2, :maximum => 40}

  validates :url, :format =>{ :with => /^((http|https):\/\/)?[a-z0-9]+([-.]{1}[a-z0-9]+).[a-z]{2,5}(:[0-9]{1,5})?(\/.)?$/ix, :message => " is not valid" }
  validates :url, :uniqueness => true
end
