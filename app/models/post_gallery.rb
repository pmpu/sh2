class PostGallery < ActiveRecord::Base
  belongs_to :post
  has_many :post_gallery_images
end
