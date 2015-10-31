class Post < ActiveRecord::Base
  has_one :post_gallery

  validates :title, length: {minimum: 4, maximum: 30 } # chkprod
  validates :body, length: {minimum: 50} # chkprod
end
