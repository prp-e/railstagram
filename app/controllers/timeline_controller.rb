class TimelineController < ApplicationController
    def index
        @followings = @user.favorites.find_all 
    end 

    private
    def find_user
        @user = User.find(current_user.id)
    end 
end
