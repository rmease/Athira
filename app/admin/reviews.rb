ActiveAdmin.register Review do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :reviewer_name, :reviewer_description, :reviewer_location, :title, :body, :logo_url, :logo, :created_at, :updated_at
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
            f.input :reviewer_name
            f.input :reviewer_description
            f.input :reviewer_location
            f.input :title
            f.input :body
            f.input :logo, as: :file
        end
        f.actions
    end

    controller do
        def update
          @review = Review.find(permitted_params[:id])

          @review.logo.purge
          @review.logo.attach(permitted_params[:review][:logo])

          @review.update(permitted_params[:review])
    
          if @review.save!
          else
            flash[:errors] = @review.errors.full_messages
          end
        end
    end

    before_save do |review|
        unless params[:review].nil? || params[:review][:logo_url].nil? || !params[:review][:logo_url].include?('https://drive.google.com')
            review.logo_url = "https://drive.google.com/uc?export=view&id" + params[:review][:logo_url].split("id")[1]
        end
    end

end
