class Leader < ApplicationRecord
    validates :name, :title, :description, :headshot_url, presence: true
    has_rich_text :rich_description
end
