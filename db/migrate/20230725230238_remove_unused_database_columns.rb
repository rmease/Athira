class RemoveUnusedDatabaseColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :companies, :about_image_url
    remove_column :image_carousels, :urls
    remove_column :leaders, :headshot_url, :description
    remove_column :reviews, :logo_url
    remove_column :services, :long_description
    remove_column :terms, :text
  end
end
