class FollowsController < ApplicationController
    before_action :find_user 

    def create
        if current_user.favorite(@user)
            flash[:notice] = "Followed successfully!"
        else 
            flash[:notice] = "Not followed successfully!"
        end 
    end 

    private
    def find_user
        @user.find_by(username: params[:profile_id])
    end
end
