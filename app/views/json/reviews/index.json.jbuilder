@reviews.each do |review|
    json.set! review.id do
        json.extract! review, :id, :company_name, :body, :logo, :updated_at
        if review.logo.attached?
            json.logo_url url_for(review.logo)
        end
    end
end