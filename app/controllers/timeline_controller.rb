class TimelineController < ApplicationController
    before_action :authenticate_user!, only: [:index]
    before_action :find_user 
    def index
        @followings = @user.favorites.find_all 
        @posts = Post.find_each
    end 

    private
    def find_user
        @user = User.find(current_user.id)
    end 
end
