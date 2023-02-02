class Review < ApplicationRecord
    validates :title, :body, presence: true
    has_one_attached :logo, dependent: :destroy
end
