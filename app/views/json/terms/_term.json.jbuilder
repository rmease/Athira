json.set! term.id do
    json.extract! term, :id, :title, :rich_description, :updated_at
end