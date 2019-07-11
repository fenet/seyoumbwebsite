class ChangePortofolioColumns < ActiveRecord::Migration[5.2]
  def up
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
