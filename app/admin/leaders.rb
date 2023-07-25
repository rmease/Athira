ActiveAdmin.register Leader do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :name, :title, :rich_description, :headshot_url, :headshot, :created_at, :updated_at
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
        column :title
        column :rich_description do |leader|
            leader.rich_description.body
        end
        actions
    end

    show do
        attributes_table do
            row :name
            row :title
            row :rich_description do |leader|
                leader.rich_description.body
            end
        end
        active_admin_comments
    end

    form do |f|
        f.inputs do
            f.input :name
            f.input :title
            f.input :rich_description, as: :action_text
            f.input :headshot, as: :file
        end
        f.actions
    end

    controller do
        def update
          @leader = Leader.find(permitted_params[:id])

          @leader.headshot.purge
          @leader.headshot.attach(permitted_params[:leader][:headshot])

          @leader.update(permitted_params[:leader])
    
          if @leader.save!
          else
            flash[:errors] = @leader.errors.full_messages
          end
        end
    end
end
