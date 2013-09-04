class Wedding < ActiveRecord::Base
  attr_accessible :user_id, :bridename, :groomname, :url, :weddingcity, :weddingstate, :weddingdate, :weddingenddate,  :day1_event1, :day1_event2,  :day2_event1, :day2_event2,  :day3_event1, :day3_event2, :day3_event3

  
  belongs_to :user
  validates :user_id, presence: true
  
  
	
end
