class ProfileController < ApplicationController
    before_action :find_user
    def show
        @posts = @user.posts
    end 

    private
    def find_user
        @user = User.find(params[:id])
    end 
end
