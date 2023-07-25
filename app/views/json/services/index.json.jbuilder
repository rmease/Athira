@services.each do |service|
    json.set! service.id do
        json.extract! service, :id, :name, :short_description, :rich_description, :updated_at
        if service.icon.attached?
            json.icon_url url_for(service.icon)
        end
    end
end

