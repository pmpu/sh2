class Ckeditor::Picture < Ckeditor::Asset
  has_attached_file :data,
                    :url => "/images/:style/:basename_:hash.:extension",
                    :hash_secret => Sh2::Application.config.secret_token,
                    :styles => { :content => '800>', :thumb => '118x100#' }

  before_post_process { translit_paperclip_file_name self.data }

  validates_attachment_presence :data
  validates_attachment_size :data, :less_than => 2.megabytes
  validates_attachment_content_type :data, :content_type => /\Aimage/

  def url_content
    url(:content)
  end
end
