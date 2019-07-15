ActiveAdmin.register Portofolio do


 permit_params :project_name, :project_photo, :project_description, :client, :location, :work_at_hand, :photo_cache

 index do


   column "Project Photo" do |i|
     image_tag(i.project_photo.url(:small_thumbnail)) if i.project_photo.present?
   end


   column "Project Name" do |i|
      i.project_name

  end

   column "Building Name" do |i|
      i.building_name

   end

   column "Location" do |i|
      i.project_description
   end

   column "Client" do |i|
      i.project_description
   end

   column "Project Description" do |i|
      i.project_description
   end

   column "Work At Hand", :work_at_hand

   column "Created At", sortable: true do |c|
     c.created_at.strftime("%b %d, %Y")
   end

   actions
 end



  filter :project_name
  filter :location
  filter :client
  filter :work_at_hand


  form do |f|
  	f.semantic_errors
    f.inputs "New Project" do

    	f.input :project_photo, :as => :file, :hint => f.portofolio.project_photo.present? \
          ? image_tag(f.object.project_photo.url(:thumbnail))
          : content_tag(:span, "no cover page yet")

	    f.input :project_name
      f.input :location
      f.input :client
	    f.input :project_description
      f.input :work_at_hand
	  end
    f.actions
  end


  show title: :project_name do
    panel "Project" do
    	attributes_table_for portofolio do
    		row "Project Photo" do |i|
    			if i.project_photo.present?
		    		image_tag(i.project_photo.url(:standard))
		    	end
		    end

        row :id
        row :project_name
	     	row :location
        row :client
        row :project_description
        row :work_at_hand
        row :created_at
        row :updated_at
     	end

    end
    #active_admin_comments
  end

  action_item :new, only: :show do
    link_to 'New Project', new_admin_portofolio_path
  end

end
