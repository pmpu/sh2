class PostsController < ApplicationController


  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @post.post_gallery = PostGallery.new
    img = PostGalleryImage.new
    img.image.url



    @post.post_gallery.post_gallery_images << img


    render :json => {
                      :has_gallery => @post.post_gallery!=nil,
                      :gallery_images => @post.post_gallery.post_gallery_images,
                      :url => img.image.url,
                      :img_errors => img.errors

                  }.to_json
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)


    if @post.valid?
      @post.save

      redirect_to @post
    else
      render :action => :new
    end
  end


  def destroy
    if current_user[:role] > 0
      @post = Post.find(params[:id])
      @post.destroy
    else
      flash[:error] = "You can'not delete posts"
    end

    redirect_to posts_path

  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end



end
