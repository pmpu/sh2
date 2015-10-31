class PostGalleryImage < ActiveRecord::Base
  belongs_to :post_gallery

  has_attached_file :image, styles: { thumb: '300x200'}
  validates_attachment :image, presence: true,
                       size: { less_than: 10.megabytes }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
