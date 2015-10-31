class AddImageAttachmentToPostGalleryImage < ActiveRecord::Migration
  def change
    add_attachment :post_gallery_images, :image
  end
end
