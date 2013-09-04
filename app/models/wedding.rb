class Wedding < ActiveRecord::Base
  attr_accessible :user_id, :bridename, :groomname, :url, :weddingcity, :weddingstate, :weddingdate, :weddingenddate,  
  					:day1_event1, :day1_event2,  :day2_event1, :day2_event2,  :day3_event1, :day3_event2, :day3_event3, 
  					:vendors_attributes, 
  					:venue_d1e1, :venue_d1e2, :venue_d2e1, :venue_d2e2, :venue_d3e1, :venue_d3e2, :venue_d3e3 

  
  belongs_to :user
  validates :user_id, presence: true

  has_many :vendors
  accepts_nested_attributes_for :vendors, allow_destroy: true # needed for nested model form
	
end
