class Service < ApplicationRecord
    validates :name, :short_description, :long_description, presence: true
    has_rich_text :rich_long_description
end
