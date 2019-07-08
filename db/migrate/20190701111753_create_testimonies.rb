class CreateTestimonies < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonies do |t|

      t.string :client_name, null: false
      t.string :client_photo
      t.string :client_testimony, null: false
      t.string :client_phone_number
      t.timestamps
    end
  end
end
