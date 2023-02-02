ActiveAdmin.register Service do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :short_description, :rich_long_description, :icon_url, :other_image_url, :created_at, :updated_at
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
        column :rich_long_description
        column :icon_url
        actions
    end

    show do
        attributes_table do
            row :name
            row :short_description
            row :rich_description do |service|
                service.rich_long_description.body
            end
            row :icon_url
        end
        active_admin_comments
    end

    form do |f|
        f.inputs do
            f.input :name
            f.input :short_description
            f.input :rich_long_description, as: :action_text
            f.input :icon_url
        end
        f.actions
    end

    before_save do |service|
        unless params[:service].nil? || params[:service][:icon_url].nil? || !params[:service][:icon_url].include?('https://drive.google.com')
            service.icon_url = "https://drive.google.com/uc?export=view&id" + params[:service][:icon_url].split("id")[1]
        end
    end

end
