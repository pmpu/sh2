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
                                        :context_menu  => {
                                            :min_role => 1,
                                            :items => [
                                                {:link => link_to('<li class="mdl-menu__item">Edit</li>'.html_safe,
                                                                  post),
                                                 :min_role => 1
                                                },
                                                {:link => link_to('<li class="mdl-menu__item">Delete</li>'.html_safe,
                                                                  post, method: :delete),
                                                 :min_role => 1
                                                }
                                            ]
                                        }

                                    }
  end
end
