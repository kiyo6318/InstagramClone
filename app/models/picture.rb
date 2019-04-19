class Picture < ApplicationRecord
  mount_uploader :image,ImageUploader
  validates :word,presence:true,length:{maximum:150}
  validates :image,presence:true
  belongs_to :user
  has_many :favorites,dependent: :destroy
  has_many :favorite_users,through: :favorites,source: :user
end