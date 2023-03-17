class ImageCarousel < ApplicationRecord
    validates :headlines, presence: true
    has_many_attached :images, dependent: :destroy

    def ordered_images
        # (img * 100 ) will give default ordereing to any images uploaded before ordering was added
        # to order images, manually set this array in the console based on the ID of existing attachments
        images.sort_by{ |img| ordered_image_ids.index(img.id) || (img.id*100) }
    end

    def serialized_urls
        self.urls.join("\n\n")
    end

    def serialized_headlines
        self.headlines.join("\n\n")
    end
end
