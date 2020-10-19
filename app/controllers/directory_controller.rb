class DirectoryController < ApplicationController
    def index
        @users = User.find_each
    end
end
