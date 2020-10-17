class TimelineController < ApplicationController
    before_action :authenticate_user
    def index
        @followings = @user.favorites.find_all 
    end 

    private
    def find_user
        @user = User.find(current_user.id)
    end 
end