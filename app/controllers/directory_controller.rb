class DirectoryController < ApplicationController
    def index
        @users = User.find_all
    end
end
