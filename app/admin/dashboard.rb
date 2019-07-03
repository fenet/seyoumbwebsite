ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    columns do
      column do
        panel "Recent Portofolio posts" do
          table_for Portofolio.order("id desc").limit(10) do
            column("building Name") { |portofolio| link_to(truncate(portofolio.building_name, :length => 20), admin_portofolio_path(portofolio)) }
            column("Created At" )   { |portofolio| portofolio.created_at.strftime("%b %d, %Y")}
          end
        end
      end
    end
    columns do
      column do
        panel "Recent Testimony posts" do
          table_for Testimony.order("id desc").limit(10).each do
            column("Client Name")    { |testimony| link_to(testimony.client_name, admin_testimony_path(testimony)) }
            column("Created At" )   { |testimony| testimony.created_at.strftime("%b %d, %Y") }
          end
        end
      end
    end
    end


  end # content
