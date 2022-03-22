class AccountsController < ApplicationController
    before_action :authenticate_account!

    def index
        # User dashboard --> post feed
        @posts = Post.all
    end

    def show
        # User profile

    end
end
