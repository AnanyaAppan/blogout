class BlogoutMainController < ApplicationController

    def home
    end

    def signin
        @user = User.new
    end

    def signup
        @user = User.new
    end

end
