class ImageCarousel < ApplicationRecord
    validates :location, :urls, :headlines, presence: true

    def serialized_urls
        self.urls.join("\n\n")
    end

    def serialized_headlines
        self.headlines.join("\n\n")
    end
end
