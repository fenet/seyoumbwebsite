class TestimonyRefernce < ActiveRecord::Migration[5.2]
  def up
  add_reference("testimonies", "admin_user", index: true, foreign_key: true)
  end

  def down
  remove_reference("testimonies", "admin_user", index: true, foreign_key: true)
  end
end
