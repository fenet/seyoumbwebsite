class CreateTestimonies < ActiveRecord::Migration[5.2]
  def change
    create_table :testimonies do |t|

      t.timestamps
    end
  end
end
