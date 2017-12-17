class SessionsController < ApplicationController

    def validate
        pwd = params[:session][:password]
        username =  params[:session][:name]
        @user = User.find_by(name:username)
        session[:user] = @user
        User.all.each do |u|
            if u.name == username
                if u.password == pwd
                    redirect_to sessions_userPage_path            
                end
            end
        end
    end

    def userPage
    
    end

    def post
        @blog = Blog.new
    end

end
