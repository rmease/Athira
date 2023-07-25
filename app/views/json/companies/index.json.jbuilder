@companies.each do |company|
    json.set! company.id do
        json.extract! company, :id, :name, :headline, :short_description, :long_description, :email_address, :phone_number, :facebook_url, :linkedin_url, :updated_at, :about_image_url
        if company.about_image.attached?
            json.about_image_url url_for(company.about_image)
        end
    end
end