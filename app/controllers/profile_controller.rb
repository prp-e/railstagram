class ProfileController < ApplicationController
    def show
        @posts = @user.posts
    end 

    private
    def find_user
        @user = User.find_by(username: params[:username])
    end 
end
