class Service < ApplicationRecord
    validates :name, :short_description, presence: true
    has_rich_text :rich_description
    has_one_attached :icon, dependent: :destroy
end
