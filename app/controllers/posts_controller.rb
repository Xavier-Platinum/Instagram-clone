class PostsController < ApplicationController
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @post.account_id  = current_account.id if account_signed_in?
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

    def post_params
        # params.require(:post).permit(:image, :first_name, :last_name, {avatars: []})
        params.require(:post).permit(:image, :image_cache)
    end
end