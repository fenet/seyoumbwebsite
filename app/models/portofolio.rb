class Portofolio < ApplicationRecord
   #belongs_to :admin_user

   mount_uploader :project_photo, ProjectPhotoUploader
end
