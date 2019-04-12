class Picture < ApplicationRecord
  mount_uploader :image,ImageUploader
  validates :word,presence:true,length:{maximum:150}
  validates :image,presence:true
end
