ActiveAdmin.register Portofolio do


 permit_params :building_name, :building_photo, :building_description, :photo_cache

 index do

   column "Building Photo" do |i|
     image_tag(i.building_photo.url(:small_thumbnail)) if i.building_photo.present?
   end
   column "Building Name", sortable: true
   column "Building Description"

   column "Created At", sortable: true do |c|
     c.created_at.strftime("%b %d, %Y")
   end
   actions
 end



  filter :building_name


  form do |f|
  	f.semantic_errors
    f.inputs "New Building" do

    	f.input :building_photo, :as => :file, :hint => f.portofolio.building_photo.present? \
          ? image_tag(f.object.building_photo.url(:thumbnail))
          : content_tag(:span, "no cover page yet")
      #f.input :photo_cache, :as => :hidden
	    f.input :building_name
	    f.input :building_description, :input_html => {:rows => 5, :cols => 20 }
	  end
    f.actions
  end


  show title: :building_name do
    panel "Building" do
    	attributes_table_for portofolio do
    		row "Building Photo" do |i|
    			if i.building_photo.present?
		    		image_tag(i.building_photo.url(:standard))
		    	end
		    end

        row :building_name
	     	row :id
        row :building_description

        row :created_at
        row :updated_at
     	end

    end
    #active_admin_comments
  end

  action_item :new, only: :show do
    link_to 'New Building', new_admin_portofolio_path
  end

end
