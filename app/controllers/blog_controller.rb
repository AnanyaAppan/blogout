class BlogController < ApplicationController
    def create
        @blog = Blog.new
        @blog.title = params[:blog][:title]
        @blog.content = params[:blog][:content]
        @blog.user = User.find_by("id":session[:user]["id"])
        if @blog.valid?
            @blog.save
            @message = "posted successfully! :)"
        else
            if @blog.title == ""
                @message = "please enter subject"
            else
                @message = "please enter content"
            end
        end
    end

    private
    def blog_params
        params.require(:blog).permit(:title,:content)
    end

    def show
        
    end

    def delete

    end

end
