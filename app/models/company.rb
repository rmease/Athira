class Company < ApplicationRecord
    validates :name, :short_description, :long_description, :headline, presence: true
    has_one_attached :about_image, dependent: :destroy
end
