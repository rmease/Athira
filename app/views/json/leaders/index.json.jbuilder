@leaders.each do |leader|
    json.set! leader.id do
        json.extract! leader, :id, :name, :title, :rich_description, :updated_at
        if leader.headshot.attached?
            json.headshot_url url_for(leader.headshot)
        end
    end
end
