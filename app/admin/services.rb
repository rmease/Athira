ActiveAdmin.register Service do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :short_description, :rich_description, :icon_url, :icon, :created_at, :updated_at
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

    index do
        id_column
        column :name
        column :short_description
        column :rich_description do |service|
            service.rich_description.body
        end
        column :icon_url
        actions
    end

    show do
        attributes_table do
            row :name
            row :short_description
            column :rich_description do |service|
                service.rich_description.body
            end
            row :icon_url
        end
        active_admin_comments
    end

    form do |f|
        f.inputs do
            f.input :name
            f.input :short_description
            f.input :rich_description, as: :action_text
            f.input :icon, as: :file
        end
        f.actions
    end

    controller do
        def update
          @service = Service.find(permitted_params[:id])

          @service.icon.purge
          @service.icon.attach(permitted_params[:service][:icon])

          @service.update(permitted_params[:service])
    
          if @service.save!
          else
            flash[:errors] = @service.errors.full_messages
          end
        end
    end
end
