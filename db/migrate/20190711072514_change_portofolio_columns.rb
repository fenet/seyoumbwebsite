class ChangePortofolioColumns < ActiveRecord::Migration[5.2]
  def up
    rename_column("portofolios", "building_name", "project_name")
    rename_column("portofolios", "building_photo", "project_photo")
    rename_column("portofolios", "building_description", "project_description")
    add_column("portofolios", "location", :string)
    add_column("portofolios", "client", :text)
    add_column("portofolios", "work_at_hand", :boolean)
  end

  def down
    remove_column("portofolios", "work_at_hand", :boolean)
    remove_column("portofolios", "client")
    remove_column("portofolios", "location")
  end
end
