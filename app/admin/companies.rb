ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :headline, :long_description, :short_description, :email_address, :phone_number, :created_at, :updated_at, :linkedin_url, :facebook_url, :about_image, :about_image_url
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

    form do |f|
        f.inputs do
            f.input :name
            f.input :headline
            f.input :long_description, as: :quill_editor
            f.input :short_description
            f.input :email_address
            f.input :phone_number
            f.input :facebook_url
            f.input :linkedin_url
            f.input :about_image, as: :file
        end
        f.actions
    end

    controller do
        def update
          @company = Company.find(permitted_params[:id])

          @company.about_image.purge
          @company.about_image.attach(permitted_params[:company][:about_image])

          @company.update(permitted_params[:company])
    
          if @company.save!
            # render admin_company_path(@company)
          else
            flash[:errors] = @company.errors.full_messages
            # render edit_admin_company_path(@company)
          end
        end
    end
end
