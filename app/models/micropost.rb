class Micropost < ApplicationRecord
  belongs_to :user
  has_many :favorites, class_name: "Micropost", dependent: :destroy
  has_many :microposts,through: :favorites, source: :user
  validates :content, presence: true, length:{ maximum: 255 }
end
