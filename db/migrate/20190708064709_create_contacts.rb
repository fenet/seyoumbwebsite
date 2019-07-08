class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :user_name
      t.string :email,  null: false
      t.string :message,  null: false
      t.timestamps
    end
  end
end
