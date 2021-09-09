class Photo < ApplicationRecord
  mount_uploader :img, PhotoUploader
end
