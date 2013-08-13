class Wedding < ActiveRecord::Base
  attr_accessible :bridename, :groomname, :url, :weddingcity, :weddingdate, :weddingstate, :user_id

  
  belongs_to :user
  validates :user_id, presence: true
  # has_many :pins
	
end
