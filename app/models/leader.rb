class Leader < ApplicationRecord
    validates :name, :title, presence: true
    has_rich_text :rich_description
    has_one_attached :headshot, dependent: :destroy
end
