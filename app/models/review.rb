class Review < ApplicationRecord
    validates :company_name, :body, presence: true
    has_one_attached :logo, dependent: :destroy
end
