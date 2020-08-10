class BloggersController < ApplicationController

def index
@bloggers =Blogger.all 
end

def show 
    find_blogger
end

def new 
    @blogger = Blogger.new
end

def create
@blogger = Blogger.create(params_path(:name, :bio, :age))
if @blogger.save
    redirect_to blogger_path(@blogger)
else
    render :template => "bloggers/new"
end
end



private

def find_blogger
    @blogger = Blogger.find(params[:id])
end

def params_path(*args)
    params.require(:blogger).permit(*args)
end

end
