class CreatePortofolios < ActiveRecord::Migration[5.2]
  def change
    create_table :portofolios do |t|
      #t.references :admin_user, index: true, foreign_key: true
      t.string :building_name, null: false
      t.string :building_photo, null: false
      t.string :building_description, null: false
      t.timestamps
    end
  end
end
