class CreatePostGalleryImages < ActiveRecord::Migration
  def change
    create_table :post_gallery_images do |t|
      t.references :post_gallery

      t.timestamps null: false
    end
  end
end
