class LikesController < ApplicationController
    before_action :find_post
    before_action :find_like, only: [:destroy]

    def create
        if already_liked?
            flash[:notice] = "You already did that!"
        else
            @post.likes.create(:user_id => current_user.id)
            redirect_to post_path(@post)
        end 
    end 

    def destroy 
        if !(already_liked?)
            flash[:notice] = "You can't unlike this post"
        else 
            @like.destroy
            redirect_to post_path(@post)
        end 
    end

    private
    def find_post
        @post = Post.find(params[:post_id])
    end 

    def already_liked?
        Like.where(user_id: current_user.id, post_id: params[:post_id]).exists? 
    end 

    def find_like
        @like = @post.likes.find(params[:id])
    end
end
