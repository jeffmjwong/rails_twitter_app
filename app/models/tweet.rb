class Tweet < ApplicationRecord
  belongs_to :user
  mount_uploader :image, TweetImageUploader
  # validates :content, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :content, format: { with: /\A[a-zA-Z]+\z/, message: "Letters only"}
end
