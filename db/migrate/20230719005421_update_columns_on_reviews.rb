class UpdateColumnsOnReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :reviewer_name
    remove_column :reviews, :reviewer_location
    remove_column :reviews, :reviewer_description
    rename_column :reviews, :title, :company_name
  end
end
