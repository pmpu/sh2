class Ckeditor::AttachmentFile < Ckeditor::Asset

  has_attached_file :data,
                    :url => "/files/:style/:basename_:hash.:extension",
                    :hash_secret => Sh2::Application.config.secret_token
  before_post_process { translit_paperclip_file_name self.data }

  validates_attachment_presence :data
  validates_attachment_size :data, :less_than => 100.megabytes
  do_not_validate_attachment_file_type :data

  def url_thumb
    @url_thumb ||= Ckeditor::Utils.filethumb(filename)
  end
end
