class Pin < ActiveRecord::Base
  # attr_accessible :title, :body

  belongs_to :user
  # validates :user_id, presence: true
end
