ActiveAdmin.register Contact do
 permit_params :user_name, :email, :message
 actions  :index, :destroy, :show, :delete

 
 index do

   column "User Name" do |i|
      i.user_name
   end
   column "Email" do |i|
      i.email
   end
   column "Message" do |i|
      i.message
   end

   column "Created At", sortable: true do |c|
     c.created_at.strftime("%b %d, %Y")
   end
   actions
 end

  filter :user_name

  show do
    panel "Contact Comments" do
      attributes_table_for contact do


        row :user_name
        row :email
        row :id
        row :message

        row :created_at
        row :updated_at
      end

    end
    #active_admin_comments
  end


end
