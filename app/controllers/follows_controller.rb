class FollowsController < ApplicationController
    before_action :find_user 

    def create
        if current_user.favorite(@user)
            flash[:notice] = "Followed successfully!"
        else 
            flash[:notice] = "Not followed successfully!"
        end 
        redirect_to profile_path(@user)
    end 

    private
    def find_user
        @user = User.find(params[:profile_id])
    end
end
