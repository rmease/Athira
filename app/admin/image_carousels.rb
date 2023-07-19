ActiveAdmin.register ImageCarousel do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
    permit_params :urls, :created_at, :updated_at, :images, :headlines
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
            f.inputs "Carousel Headlines" do
                f.input :serialized_headlines, :as => :text, hint: "HINT: Save each headline on a separate line, separated by a line."
            end
            f.inputs "Carousel URLs" do
                f.input :serialized_urls, :as => :text, hint: "HINT: Save each URL on a separate line, separated by a line."
            end
            f.input :images, as: :file, input_html: { multiple: true }
            f.object.images.each do |image|
             span image_tag(image)
            end
        end
        f.actions
    end

    before_save do |image_carousel|
        unless params[:image_carousel].nil? || params[:image_carousel][:images].nil?
            image_carousel.images.purge
            image_carousel.images.attach(params[:image_carousel][:images])
        end
        unless params[:image_carousel].nil? || params[:image_carousel][:serialized_urls].nil?
            image_carousel.urls = params[:image_carousel][:serialized_urls].split("\r\n\r\n").map do |url|
                if url.include?('https://drive.google.com')
                    url = "https://drive.google.com/uc?export=view&id" + url.split("id")[1] 
                end
                url
            end
        end
        unless params[:image_carousel].nil? || params[:image_carousel][:serialized_headlines].nil?
            image_carousel.headlines = 
                params[:image_carousel][:serialized_headlines].split("\r\n\r\n")
        end
    end
end
