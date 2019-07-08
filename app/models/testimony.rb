class Testimony < ApplicationRecord
  #belongs_to :admin_user

  mount_uploader :client_photo, ClientPhotoUploader
end
