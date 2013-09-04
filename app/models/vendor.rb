class Vendor < ActiveRecord::Base
  attr_accessible :category, :name, :vendorcity, :vendorstate

  belongs_to :wedding
end
