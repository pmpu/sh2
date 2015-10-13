module ApplicationHelper

  def main_path
    p = request.path.split('/')[1]
    (defined?p)?'news':p
  end

end
