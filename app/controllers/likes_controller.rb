class LikesController < ApplicationController
    before_action :find_post

    def create
        if already_liked?
            flash[:notice] = "You already did that!"
        else
            @post.likes.create(:user_id => current_user.id)
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
end
