class AttachOrderedImageIdsToImageCarousels < ActiveRecord::Migration[6.1]
  def change
    add_column :image_carousels, :ordered_image_ids, :json, default: []
  end
end
