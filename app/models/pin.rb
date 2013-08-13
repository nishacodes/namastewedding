class Pin < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  belongs_to_through :wedding
  validates :user_id, presence: true
end
