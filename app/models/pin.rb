class Pin < ActiveRecord::Base
  attr_accessible :user_id, :wedding_id, :image

  belongs_to :user
  validates :user_id, presence: true
  mount_uploader :image, ImageUploader

end
