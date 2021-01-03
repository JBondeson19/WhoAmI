class PostsController < ApplicationController

    def show
        @post = Post.find(params[:id])
        render json: @post
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
            p "post destroyed"
        else
            render json: {error: @post.errors.messages}
        end
    end
end
