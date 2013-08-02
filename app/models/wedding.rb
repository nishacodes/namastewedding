class Wedding < ActiveRecord::Base
  attr_accessible :bridename, :groomname, :url, :weddingcity, :weddingdate, :weddingstate
end
