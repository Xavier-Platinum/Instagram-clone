class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(params[:object])
        if @post.save
            flash[:success] = "Post successfully created"
            redirect_to dashboard_url
        else
            flash[:error] = "Something went wrong"
            render new_post_url
        end
    end

    def show
        # @ = .find()
    end

    private 

    def post_para
        # params.require(:post).permit(:image, :first_name, :last_name, {avatars: []})
        params.require(:post).permit(:image, :image_cache)
    end
end