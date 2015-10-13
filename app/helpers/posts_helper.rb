module PostsHelper
  def postcard_for(post)
    render :partial => 'shared/card', :locals => {
                                        :title => post[:title],
                                        :body => post[:body].html_safe,
                                        :side_content => {
                                            :type => :image,
                                            :url => "http://www.getmdl.io/assets/demos/dog.png"
                                        },
                                        :bottom_link => {
                                            :title => "Read more",
                                            :url => "http://google.com/"
                                        },
                                        :context_menu  => [
                                            {:title => "Edit", :link => "/edit"},
                                            {:title => "Delete", :link => "/delete"}
                                        ]
                                    }
  end
end
