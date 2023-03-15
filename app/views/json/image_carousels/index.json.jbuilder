@image_carousels.each do |image_carousel|
    json.set! image_carousel.id do
        json.extract! image_carousel, :id, :location, :headlines, :updated_at
        if image_carousel.images.attached?
            json.urls (image_carousel.ordered_images.map { |img| url_for(img) })
        end
    end
end
