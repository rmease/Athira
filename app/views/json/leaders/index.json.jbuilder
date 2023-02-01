@leaders.each do |leader|
    json.set! leader.id do
        json.extract! leader, :id, :name, :title, :rich_description, :description, :headshot_url, :updated_at
    end
end
