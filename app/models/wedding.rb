class Wedding < ActiveRecord::Base
  attr_accessible :bridename, :groomname, :url, :weddingcity, :weddingdate, :weddingstate, :user_id

  
  belongs_to :user
  validates :user_id, presence: true
  has_many :pins, :through => :user #not working yet, need to first fix user has one wedding
	
end
