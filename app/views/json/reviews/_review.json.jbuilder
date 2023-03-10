json.set! review.id do
    json.extract! review, :id, :title, :body, :reviewer_name, :reviewer_description, :reviewer_location, :updated_at
    if review.logo.attached?
        json.logo_url url_for(review.logo)
    end
end