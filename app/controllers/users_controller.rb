class UsersController < ApplicationController
    def create
        @user = User.new(user_params)
        if @user.valid?
            @message = ""
            User.all.each do |u|
                if u.name == @user.name
                    @message = "username already exists...please re-enter!"
                    break
                end
            end
            if @message == ""
                @user.save
                @message = "Welcome to blogout! sign in to start blogging!"
            end
        else
            if @user.password == ""
                @message = "please enter password"
            else
                @message = "please enter username"
            end
        end
    end

    private
    def user_params
        params.require(:user).permit(:name,:password)
    end

end
