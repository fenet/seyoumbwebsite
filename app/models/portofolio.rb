class Portofolio < ApplicationRecord
   belongs_to :admin_user

   mount_uploader :building_photo, BuildingPhotoUploader
end
