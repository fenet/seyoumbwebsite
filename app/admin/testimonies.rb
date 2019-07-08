ActiveAdmin.register Testimony do


  permit_params :client_name, :client_photo, :photo_cache, :client_testimony, :client_phone_number

  index do

    column "Client Photo" do |i|
      image_tag(i.client_photo.url(:small_thumbnail)) if i.client_photo.present?
    end
    column "Client Name" do |i|
       i.client_name
    end
    column "Client Testimony" do |i|
       i.client_testimony
    end

    column "Created At", sortable: true do |c|
      c.created_at.strftime("%b %d, %Y")
    end
    actions
  end


   filter :client_name

   form do |f|
   	f.semantic_errors
     f.inputs "Create New Testimony", :multipart => true do

     	f.input :client_photo, :as => :file, :hint => f.testimony.client_photo.present? \
           ? image_tag(f.object.client_photo.url(:thumbnail))
           : content_tag(:span, "no cover page yet")
      #f.input :photo_cache, :as => :hidden
 	    f.input :client_name
 	    f.input :client_testimony, :input_html => {:rows => 5, :cols => 20 }
 	  end
     f.actions
   end

   show title: :client_name do
     panel "Testimony" do
     	attributes_table_for testimony do
     		row "Client Photo" do |i|
     			if i.client_photo.present?
 		    		image_tag(i.client_photo.url(:standard))
 		    	end
 		    end

         row :client_name
 	     	 row :id
         row :client_testimony

         row :created_at
         row :updated_at
      	end

     end
     #active_admin_comments
   end

   action_item :new, only: :show do
     link_to 'New Testimony', new_admin_testimony_path
   end

end
