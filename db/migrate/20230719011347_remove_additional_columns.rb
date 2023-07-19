class RemoveAdditionalColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :services, :other_image_url
    remove_column :companies, :splash_image_url
    remove_column :image_carousels, :location
  end
end
